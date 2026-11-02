-- MusicDB schema: tables and indexes
-- Requires MySQL 8.0.16+ (CHECK constraints are enforced from that version on)

CREATE DATABASE IF NOT EXISTS MusicDB;
USE MusicDB;

CREATE TABLE User (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    passwordHash VARCHAR(255) NOT NULL,
    dateJoined DATE NOT NULL
);

CREATE TABLE Artist (
    artistID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    debutYear INT,
    nationality VARCHAR(50)
);

CREATE TABLE Album (
    albumID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    releaseYear INT,
    genre VARCHAR(50)
);

CREATE TABLE Track (
    trackID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    length INT NOT NULL,  -- seconds
    albumID INT NOT NULL,
    CONSTRAINT fk_track_album FOREIGN KEY (albumID)
        REFERENCES Album(albumID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Junction table: an album can have several artists, an artist can have several albums
CREATE TABLE AlbumArtists (
    albumID INT NOT NULL,
    artistID INT NOT NULL,
    PRIMARY KEY (albumID, artistID),
    CONSTRAINT fk_albumartists_album FOREIGN KEY (albumID)
        REFERENCES Album(albumID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_albumartists_artist FOREIGN KEY (artistID)
        REFERENCES Artist(artistID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Collections (
    collectionID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT NOT NULL,
    albumID INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    CONSTRAINT fk_collections_user FOREIGN KEY (userID)
        REFERENCES User(userID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_collections_album FOREIGN KEY (albumID)
        REFERENCES Album(albumID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Composite primary key: a user can rate a given album only once
CREATE TABLE AlbumRatings (
    userID INT NOT NULL,
    albumID INT NOT NULL,
    rating INT NOT NULL,
    PRIMARY KEY (userID, albumID),
    CONSTRAINT fk_albumratings_user FOREIGN KEY (userID)
        REFERENCES User(userID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_albumratings_album FOREIGN KEY (albumID)
        REFERENCES Album(albumID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT chk_albumratings_range CHECK (rating BETWEEN 1 AND 5)
);

-- Composite primary key: a user can rate a given track only once
CREATE TABLE TrackRatings (
    userID INT NOT NULL,
    trackID INT NOT NULL,
    rating INT NOT NULL,
    PRIMARY KEY (userID, trackID),
    CONSTRAINT fk_trackratings_user FOREIGN KEY (userID)
        REFERENCES User(userID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_trackratings_track FOREIGN KEY (trackID)
        REFERENCES Track(trackID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT chk_trackratings_range CHECK (rating BETWEEN 1 AND 5)
);

-- Indexes on frequently joined and filtered columns
CREATE INDEX idx_track_albumID ON Track(albumID);
CREATE INDEX idx_collections_userID ON Collections(userID);
CREATE INDEX idx_collections_albumID ON Collections(albumID);
CREATE INDEX idx_album_genre ON Album(genre);
