-- MusicDB constraint tests
-- Every statement below is INVALID on purpose, and each one should fail with an error.
-- If any of them succeeds, a constraint is missing or broken.
-- Run schema.sql and seed_data.sql first. If your client stops at the first error,
-- run the statements one at a time.

USE MusicDB;

-- 1. Foreign key: a track cannot belong to an album that doesn't exist
INSERT INTO Track (name, length, albumID) VALUES ('burn', 183, 999);

-- 2. Foreign key: a nonexistent user cannot rate an album
INSERT INTO AlbumRatings (userID, albumID, rating) VALUES (999, 2, 5);

-- 3. CHECK constraint: ratings must be between 1 and 5
INSERT INTO AlbumRatings (userID, albumID, rating) VALUES (2, 1, 10);

-- 4. Composite primary key: a user cannot rate the same album twice
INSERT INTO AlbumRatings (userID, albumID, rating) VALUES (1, 2, 4);

-- 5. UNIQUE constraint: usernames must be unique
INSERT INTO User (username, email, passwordHash, dateJoined)
VALUES ('ava', 'someone.else@example.com', 'demo_hash_x', '2025-01-01');

-- 6. NOT NULL constraint: an album must have a name
INSERT INTO Album (name, releaseYear, genre) VALUES (NULL, 2025, 'Pop');
