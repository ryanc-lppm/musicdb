-- MusicDB sample data
-- All users are fictional, and the hashes are placeholders, not real credentials.
-- Run schema.sql first.

USE MusicDB;

INSERT INTO User (username, email, passwordHash, dateJoined) VALUES
('ava',   'ava@example.com',   'demo_hash_ava',   '2024-01-15'),  -- 1
('ben',   'ben@example.com',   'demo_hash_ben',   '2024-02-10'),  -- 2
('cleo',  'cleo@example.com',  'demo_hash_cleo',  '2024-03-05'),  -- 3
('dev',   'dev@example.com',   'demo_hash_dev',   '2024-04-20'),  -- 4
('ella',  'ella@example.com',  'demo_hash_ella',  '2024-05-12'),  -- 5
('finn',  'finn@example.com',  'demo_hash_finn',  '2024-06-01'),  -- 6
('gia',   'gia@example.com',   'demo_hash_gia',   '2024-07-18'),  -- 7
('hugo',  'hugo@example.com',  'demo_hash_hugo',  '2024-08-09'),  -- 8
('iris',  'iris@example.com',  'demo_hash_iris',  '2024-09-02');  -- 9

INSERT INTO Artist (name, debutYear, nationality) VALUES
('PinkPantheress', 2021, 'UK'),               -- 1
('Steven Kou', 2018, 'USA'),                  -- 2
('Cam Rao', 2019, 'USA'),                     -- 3
('Public Library Commute', 2017, 'USA'),      -- 4
('Anri', 1978, 'Japan'),                      -- 5
('Hot Mulligan', 2014, 'USA'),                -- 6
('Brandon New', 2020, 'USA'),                 -- 7
('Blink-182', 1992, 'USA'),                   -- 8
('Finch', 1999, 'USA'),                       -- 9
('Sum 41', 1996, 'Canada'),                   -- 10
('Moose Blood', 2009, 'UK'),                  -- 11
('Queens of the Stone Age', 1996, 'USA'),     -- 12
('Limp Bizkit', 1994, 'USA'),                 -- 13
('Ka', 2008, 'USA'),                          -- 14
('Lord Huron', 2010, 'USA'),                  -- 15
('Open Mike Eagle', 2010, 'USA'),             -- 16
('Hiatus Kaiyote', 2011, 'Australia'),        -- 17
('Nirvana', 1987, 'USA'),                     -- 18
('Alice in Chains', 1987, 'USA'),             -- 19
('Michael Jackson', 1964, 'USA'),             -- 20
('Kanye West', 1996, 'USA'),                  -- 21
('Justin Bieber', 2008, 'Canada'),            -- 22
('Taylor Swift', 2006, 'USA'),                -- 23
('The 1975', 2002, 'UK'),                     -- 24
('Ed Sheeran', 2011, 'UK'),                   -- 25
('Coldplay', 1996, 'UK'),                     -- 26
('SUDA Masaki', 2014, 'Japan'),               -- 27
('Fujii Kaze', 2020, 'Japan'),                -- 28
('Jeff Satur', 2020, 'Thailand'),             -- 29
('Maneskin', 2016, 'Italy'),                  -- 30
('Given', 2020, 'Japan'),                     -- 31
('Travis Scott', 2012, 'USA'),                -- 32
('Luidji', 2015, 'France'),                   -- 33
('Dave', 2016, 'UK'),                         -- 34
('Mobb Deep', 1992, 'USA'),                   -- 35
('Hugo TSR', 2017, 'France'),                 -- 36
('Tyler, the Creator', 2007, 'USA'),          -- 37
('Bruno Mars', 2004, 'USA'),                  -- 38
('Modern Baseball', 2011, 'USA'),             -- 39
('Laufey', 2021, 'Iceland'),                  -- 40
('Billie Eilish', 2015, 'USA'),               -- 41
('Kenshi Yonezu', 2009, 'Japan'),             -- 42
('Gigi Perez', 2021, 'USA');                  -- 43

INSERT INTO Album (name, releaseYear, genre) VALUES
('Fancy That', 2025, 'Dance-Pop'),                                      -- 1
('Harana', 2021, 'R&B'),                                                -- 2
('Silver Lining', 2020, 'Indie Pop'),                                   -- 3
('Backspin', 2022, 'Hip Hop'),                                          -- 4
('Timely', 2022, 'City Pop'),                                           -- 5
('Opportunities', 2022, 'Emo'),                                         -- 6
('TBD', 2021, 'Hip Hop'),                                               -- 7
('Untitled', 2003, 'Pop Punk'),                                         -- 8  (Blink-182)
('What It Is to Burn', 2002, 'Post-Hardcore'),                          -- 9
('Chuck', 2004, 'Pop Punk'),                                            -- 10
('Cheshire Cat', 1995, 'Pop Punk'),                                     -- 11
('Neighborhoods', 2011, 'Pop Punk'),                                    -- 12
('Moving Home', 2016, 'Emo'),                                           -- 13
('Songs for the Deaf', 2002, 'Rock'),                                   -- 14
('3 Dollar Bill, Y''all', 1997, 'Nu Metal'),                            -- 15
('Honor Killed the Samurai', 2016, 'Hip Hop'),                          -- 16
('The Night''s Gambit', 2013, 'Hip Hop'),                               -- 17
('Strange Trails', 2015, 'Folk Rock'),                                  -- 18
('Brick Body Kids Still Daydream', 2017, 'Hip Hop'),                    -- 19
('Choose Your Weapon', 2015, 'Neo-Soul'),                               -- 20
('Nevermind', 1991, 'Grunge'),                                          -- 21
('Dirt', 1992, 'Grunge'),                                               -- 22
('Thriller', 1982, 'Pop'),                                              -- 23
('Graduation', 2007, 'Hip Hop'),                                        -- 24
('Facelift', 1990, 'Grunge'),                                           -- 25
('Justice', 2021, 'Pop'),                                               -- 26
('Lover', 2019, 'Pop'),                                                 -- 27
('Being Funny in a Foreign Language', 2022, 'Indie Pop'),               -- 28
('divide (deluxe)', 2017, 'Pop'),                                       -- 29
('Parachutes', 2000, 'Alternative Rock'),                               -- 30
('Sensation Circle', 2024, 'J-Pop'),                                    -- 31
('HELP EVER HURT NEVER', 2020, 'J-Pop'),                                -- 32
('Space Shuttle No.8', 2023, 'T-Pop'),                                  -- 33
('Teatro d''ira', 2021, 'Rock'),                                        -- 34
('Gift', 2023, 'J-Pop'),                                                -- 35
('Utopia', 2023, 'Hip Hop'),                                            -- 36
('Saison 00', 2022, 'French Rap'),                                      -- 37
('Boy Who Played the Harp', 2021, 'UK Rap'),                            -- 38
('The Infamous', 1995, 'Hip Hop'),                                      -- 39
('Tant Qu''on Est La', 2021, 'French Rap'),                             -- 40
('Chromakopia', 2024, 'Hip Hop'),                                       -- 41
('24K Magic', 2016, 'Funk'),                                            -- 42
('You''re Gonna Miss It All', 2014, 'Emo'),                             -- 43
('The College Dropout', 2004, 'Hip Hop'),                               -- 44
('A Night at the Symphony: Live at the Hollywood Bowl', 2024, 'Jazz Pop'), -- 45
('Matter of Time', 2025, 'Jazz Pop'),                                    -- 46
('Hit Me Hard and Soft', 2024, 'Pop'),                                  -- 47
('STRAY SHEEP', 2020, 'J-Pop'),                                         -- 48
('At the Beach, In Every Life', 2024, 'Indie Pop');                     -- 49

-- Two tracks per album, in album order (track length in seconds)
INSERT INTO Track (name, length, albumID) VALUES
('Tonight', 174, 1), ('Stateside', 168, 1),                             -- Fancy That
('Harana Intro', 200, 2), ('Late Night Talk', 195, 2),                  -- Harana
('Silver Lining', 210, 3), ('Drift Away', 198, 3),                      -- Silver Lining
('Backspin Intro', 180, 4), ('Commute Beat', 205, 4),                   -- Backspin
('Timely Pt.1', 220, 5), ('Timely Pt.2', 215, 5),                       -- Timely
('Hadley', 230, 6), ('La Csquita Roja', 240, 6),                        -- Opportunities
('TBD Track 1', 200, 7), ('TBD Track 2', 195, 7),                       -- TBD
('Feeling This', 240, 8), ('I Miss You', 230, 8),                       -- Untitled
('Letters to You', 215, 9), ('What It Is to Burn', 220, 9),             -- What It Is to Burn
('We''re All to Blame', 200, 10), ('Some Say', 190, 10),                -- Chuck
('Carousel', 165, 11), ('Apple Shampoo', 158, 11),                      -- Cheshire Cat
('Ghost on the Dance Floor', 250, 12), ('Up All Night', 235, 12),       -- Neighborhoods
('Boris', 210, 13), ('Cherry', 205, 13),                                -- Moving Home
('No One Knows', 285, 14), ('Go with the Flow', 250, 14),               -- Songs for the Deaf
('Break Stuff', 184, 15), ('Nookie', 296, 15),                          -- 3 Dollar Bill, Y'all
('Day', 210, 16), ('Vessel', 195, 16),                                  -- Honor Killed the Samurai
('Off the Record', 230, 17), ('Jungle', 245, 17),                       -- The Night's Gambit
('Meet Me in the Woods', 257, 18), ('The Night We Met', 209, 18),       -- Strange Trails
('Brick Body Complex', 230, 19), ('Hymnal', 200, 19),                   -- Brick Body Kids Still Daydream
('Borderline With My Atoms', 280, 20), ('Mileena', 265, 20),            -- Choose Your Weapon
('Smells Like Teen Spirit', 301, 21), ('Come as You Are', 219, 21),     -- Nevermind
('Would?', 213, 22), ('Down in a Hole', 286, 22),                       -- Dirt
('Billie Jean', 294, 23), ('Beat It', 258, 23),                         -- Thriller
('Stronger', 311, 24), ('Good Life', 207, 24),                          -- Graduation
('Man in the Box', 287, 25), ('Sea of Sorrow', 333, 25),                -- Facelift
('Peaches', 198, 26), ('Ghost', 153, 26),                               -- Justice
('Cruel Summer', 178, 27), ('Lover', 221, 27),                          -- Lover
('Part of the Band', 244, 28), ('About You', 326, 28),                  -- Being Funny in a Foreign Language
('Shape of You', 233, 29), ('Castle on the Hill', 261, 29),             -- divide (deluxe)
('Yellow', 269, 30), ('Trouble', 273, 30),                              -- Parachutes
('Sensation Circle', 220, 31), ('Reborn', 215, 31),                     -- Sensation Circle
('Matsuri', 222, 32), ('Shinunoga E-Wa', 283, 32),                      -- HELP EVER HURT NEVER
('Space Shuttle No.8', 230, 33), ('Lover Boy', 210, 33),                -- Space Shuttle No.8
('ZITTI E BUONI', 193, 34), ('I WANNA BE YOUR SLAVE', 174, 34),         -- Teatro d'ira
('Gift', 200, 35), ('Mahoroba', 215, 35),                               -- Gift
('FE!N', 192, 36), ('Telekinesis', 285, 36),                            -- Utopia
('Saison 00 Intro', 200, 37), ('Pas Le Temps', 210, 37),                -- Saison 00
('Verdansk', 220, 38), ('Three Rivers', 205, 38),                       -- Boy Who Played the Harp
('Shook Ones Pt. II', 295, 39), ('Survival of the Fittest', 290, 39),   -- The Infamous
('Tant Qu''on Est La', 215, 40), ('Freestyle', 205, 40),                -- Tant Qu'on Est La
('St. Chroma', 290, 41), ('Noid', 233, 41),                             -- Chromakopia
('24K Magic', 226, 42), ('That''s What I Like', 207, 42),               -- 24K Magic
('Your Graduation', 192, 43), ('Apartment', 174, 43),                   -- You're Gonna Miss It All
('Through the Wire', 238, 44), ('Jesus Walks', 250, 44),                -- The College Dropout
('From the Start (Live)', 215, 45), ('Falling Behind (Live)', 230, 45), -- A Night at the Symphony
('Tough Luck', 200, 46), ('Lover Girl', 195, 46),                       -- Matter of Time
('Birds of a Feather', 210, 47), ('Lunch', 178, 47),                    -- Hit Me Hard and Soft
('KICK BACK', 230, 48), ('Pale Blue', 240, 48),                         -- STRAY SHEEP
('Sailor Song', 213, 49), ('Velvet Sky', 200, 49);                      -- At the Beach, In Every Life

INSERT INTO AlbumArtists (albumID, artistID) VALUES
(1, 1),   -- Fancy That - PinkPantheress
(2, 2),   -- Harana - Steven Kou
(3, 3),   -- Silver Lining - Cam Rao
(4, 4),   -- Backspin - Public Library Commute
(5, 5),   -- Timely - Anri
(6, 6),   -- Opportunities - Hot Mulligan
(7, 7),   -- TBD - Brandon New
(8, 8),   -- Untitled - Blink-182
(9, 9),   -- What It Is to Burn - Finch
(10, 10), -- Chuck - Sum 41
(11, 8),  -- Cheshire Cat - Blink-182
(12, 8),  -- Neighborhoods - Blink-182
(13, 11), -- Moving Home - Moose Blood
(14, 12), -- Songs for the Deaf - Queens of the Stone Age
(15, 13), -- 3 Dollar Bill, Y'all - Limp Bizkit
(16, 14), -- Honor Killed the Samurai - Ka
(17, 14), -- The Night's Gambit - Ka
(18, 15), -- Strange Trails - Lord Huron
(19, 16), -- Brick Body Kids Still Daydream - Open Mike Eagle
(20, 17), -- Choose Your Weapon - Hiatus Kaiyote
(21, 18), -- Nevermind - Nirvana
(22, 19), -- Dirt - Alice in Chains
(23, 20), -- Thriller - Michael Jackson
(24, 21), -- Graduation - Kanye West
(25, 19), -- Facelift - Alice in Chains
(26, 22), -- Justice - Justin Bieber
(27, 23), -- Lover - Taylor Swift
(28, 24), -- Being Funny in a Foreign Language - The 1975
(29, 25), -- divide (deluxe) - Ed Sheeran
(30, 26), -- Parachutes - Coldplay
(31, 27), -- Sensation Circle - SUDA Masaki
(32, 28), -- HELP EVER HURT NEVER - Fujii Kaze
(33, 29), -- Space Shuttle No.8 - Jeff Satur
(34, 30), -- Teatro d'ira - Maneskin
(35, 31), -- Gift - Given
(36, 32), -- Utopia - Travis Scott
(37, 33), -- Saison 00 - Luidji
(38, 34), -- Boy Who Played the Harp - Dave
(39, 35), -- The Infamous - Mobb Deep
(40, 36), -- Tant Qu'on Est La - Hugo TSR
(41, 37), -- Chromakopia - Tyler, the Creator
(42, 38), -- 24K Magic - Bruno Mars
(43, 39), -- You're Gonna Miss It All - Modern Baseball
(44, 21), -- The College Dropout - Kanye West
(45, 40), -- A Night at the Symphony - Laufey
(46, 40), -- Matter of Time - Laufey
(47, 41), -- Hit Me Hard and Soft - Billie Eilish
(48, 42), -- STRAY SHEEP - Kenshi Yonezu
(49, 43); -- At the Beach, In Every Life - Gigi Perez

INSERT INTO Collections (userID, albumID, name) VALUES
-- ava (1)
(1, 1, 'Favorites'), (1, 2, 'Favorites'), (1, 3, 'Favorites'), (1, 4, 'Favorites'), (1, 5, 'Favorites'),
-- ben (2)
(2, 6, 'Favorites'), (2, 7, 'Favorites'), (2, 8, 'Favorites'), (2, 9, 'Favorites'), (2, 10, 'Favorites'),
-- cleo (3)
(3, 11, 'Favorites'), (3, 12, 'Favorites'), (3, 13, 'Favorites'), (3, 14, 'Favorites'), (3, 15, 'Favorites'),
-- dev (4)
(4, 16, 'Favorites'), (4, 17, 'Favorites'), (4, 18, 'Favorites'), (4, 19, 'Favorites'), (4, 20, 'Favorites'),
-- ella (5)
(5, 21, 'Favorites'), (5, 22, 'Favorites'), (5, 23, 'Favorites'), (5, 24, 'Favorites'), (5, 25, 'Favorites'),
-- finn (6)
(6, 26, 'Favorites'), (6, 27, 'Favorites'), (6, 28, 'Favorites'), (6, 29, 'Favorites'), (6, 30, 'Favorites'),
-- gia (7)
(7, 31, 'Favorites'), (7, 32, 'Favorites'), (7, 33, 'Favorites'), (7, 34, 'Favorites'), (7, 35, 'Favorites'),
-- hugo (8)
(8, 36, 'Favorites'), (8, 37, 'Favorites'), (8, 38, 'Favorites'), (8, 39, 'Favorites'), (8, 40, 'Favorites'),
-- iris (9)
(9, 41, 'Favorites'), (9, 42, 'Favorites'), (9, 43, 'Favorites'), (9, 44, 'Favorites'), (9, 45, 'Favorites'),
-- a second collection for ava
(1, 41, 'Discover'), (1, 46, 'Discover'), (1, 47, 'Discover'), (1, 48, 'Discover'), (1, 49, 'Discover');

INSERT INTO AlbumRatings (userID, albumID, rating) VALUES
(1, 1, 5), (1, 2, 5), (1, 3, 4), (1, 4, 5), (1, 5, 4), (1, 41, 5), (1, 46, 4), (1, 47, 5), (1, 48, 4), (1, 49, 5),
(2, 6, 5), (2, 7, 4), (2, 8, 5), (2, 9, 5), (2, 10, 4),
(3, 11, 5), (3, 12, 5), (3, 13, 4), (3, 14, 5), (3, 15, 4),
(4, 16, 5), (4, 17, 5), (4, 18, 4), (4, 19, 5), (4, 20, 5),
(5, 21, 5), (5, 22, 5), (5, 23, 5), (5, 24, 4), (5, 25, 4),
(6, 26, 4), (6, 27, 5), (6, 28, 5), (6, 29, 4), (6, 30, 5),
(7, 31, 5), (7, 32, 5), (7, 33, 4), (7, 34, 5), (7, 35, 4),
(8, 36, 5), (8, 37, 4), (8, 38, 5), (8, 39, 5), (8, 40, 4),
(9, 41, 5), (9, 42, 5), (9, 43, 4), (9, 44, 5), (9, 45, 5),
-- extra ratings of albums outside each user's own collection
(2, 21, 5), (3, 8, 4), (5, 14, 5), (7, 23, 4), (9, 36, 5), (1, 26, 3);

INSERT INTO TrackRatings (userID, trackID, rating) VALUES
(1, 1, 5), (1, 2, 4), (1, 3, 5), (1, 4, 4),
(2, 11, 5), (2, 12, 4), (2, 15, 5), (2, 16, 5),
(3, 21, 5), (3, 22, 4), (3, 23, 5), (3, 24, 4),
(4, 31, 5), (4, 32, 4), (4, 33, 5), (4, 34, 4),
(5, 41, 5), (5, 42, 5), (5, 43, 4), (5, 44, 5),
(6, 51, 4), (6, 52, 5), (6, 53, 5), (6, 54, 4),
(7, 61, 5), (7, 62, 4), (7, 63, 5), (7, 64, 4),
(8, 71, 5), (8, 72, 4), (8, 73, 5), (8, 74, 5),
(9, 81, 5), (9, 82, 5), (9, 83, 4), (9, 84, 5);
