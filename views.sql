-- MusicDB views: each one answers a question from the design document
-- Run schema.sql and seed_data.sql first.

USE MusicDB;

-- VIEW 1: What albums has a user saved?
CREATE OR REPLACE VIEW vw_user_saved_albums AS
SELECT
    u.userID,
    u.username,
    c.name AS collectionName,
    a.albumID,
    a.name AS albumName,
    a.genre,
    a.releaseYear
FROM Collections c
JOIN User u ON c.userID = u.userID
JOIN Album a ON c.albumID = a.albumID;

SELECT * FROM vw_user_saved_albums;

-- VIEW 2: What is the average user rating for each artist?
CREATE OR REPLACE VIEW vw_avg_artist_rating AS
SELECT
    ar.artistID,
    art.name AS artistName,
    ROUND(AVG(r.rating), 2) AS avgRating,
    COUNT(r.rating) AS numRatings
FROM AlbumArtists ar
JOIN Artist art ON ar.artistID = art.artistID
JOIN AlbumRatings r ON ar.albumID = r.albumID
GROUP BY ar.artistID, art.name
ORDER BY avgRating DESC;

SELECT * FROM vw_avg_artist_rating;

-- VIEW 3: What album should be recommended based on a user's favorite genre?
-- A user's favorite genre is the genre with their highest average album rating.
-- Recommends every album in that genre that the user has not rated yet.
CREATE OR REPLACE VIEW vw_recommend_by_genre AS
WITH user_fav_genre AS (
    SELECT
        r.userID,
        a.genre,
        AVG(r.rating) AS avgGenreRating,
        -- Ties on average rating are broken by how many albums the user rated in
        -- the genre, then alphabetically, so the favorite genre is deterministic.
        ROW_NUMBER() OVER (
            PARTITION BY r.userID
            ORDER BY AVG(r.rating) DESC, COUNT(*) DESC, a.genre
        ) AS rn
    FROM AlbumRatings r
    JOIN Album a ON r.albumID = a.albumID
    GROUP BY r.userID, a.genre
)
SELECT
    u.userID,
    u.username,
    ufg.genre AS favoriteGenre,
    a.albumID AS recommendedAlbumID,
    a.name AS recommendedAlbum,
    a.releaseYear
FROM user_fav_genre ufg
JOIN User u ON ufg.userID = u.userID
JOIN Album a ON a.genre = ufg.genre
LEFT JOIN AlbumRatings existing
    ON existing.userID = ufg.userID AND existing.albumID = a.albumID
WHERE ufg.rn = 1
  AND existing.albumID IS NULL;

SELECT * FROM vw_recommend_by_genre;

-- VIEW 4: Which genre has the highest rated albums?
CREATE OR REPLACE VIEW vw_genre_avg_rating AS
SELECT
    a.genre,
    ROUND(AVG(r.rating), 2) AS avgRating,
    COUNT(r.rating) AS numRatings
FROM Album a
JOIN AlbumRatings r ON a.albumID = r.albumID
GROUP BY a.genre
ORDER BY avgRating DESC;

SELECT * FROM vw_genre_avg_rating;

-- VIEW 5: What is the highest rated album in each genre?
CREATE OR REPLACE VIEW vw_highest_rated_album_per_genre AS
WITH album_avg AS (
    SELECT
        a.albumID,
        a.name AS albumName,
        a.genre,
        AVG(r.rating) AS avgRating,
        ROW_NUMBER() OVER (PARTITION BY a.genre ORDER BY AVG(r.rating) DESC) AS rn
    FROM Album a
    JOIN AlbumRatings r ON a.albumID = r.albumID
    GROUP BY a.albumID, a.name, a.genre
)
SELECT genre, albumID, albumName, ROUND(avgRating, 2) AS avgRating
FROM album_avg
WHERE rn = 1
ORDER BY genre;

SELECT * FROM vw_highest_rated_album_per_genre;

-- VIEW 6: What is the highest rated track in each album?
CREATE OR REPLACE VIEW vw_highest_rated_track_per_album AS
WITH track_avg AS (
    SELECT
        t.albumID,
        al.name AS albumName,
        t.trackID,
        t.name AS trackName,
        AVG(r.rating) AS avgRating,
        ROW_NUMBER() OVER (PARTITION BY t.albumID ORDER BY AVG(r.rating) DESC) AS rn
    FROM Track t
    JOIN Album al ON t.albumID = al.albumID
    JOIN TrackRatings r ON t.trackID = r.trackID
    GROUP BY t.albumID, al.name, t.trackID, t.name
)
SELECT albumID, albumName, trackID, trackName, ROUND(avgRating, 2) AS avgRating
FROM track_avg
WHERE rn = 1
ORDER BY albumID;

SELECT * FROM vw_highest_rated_track_per_album;
