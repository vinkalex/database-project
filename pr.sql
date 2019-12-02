---- CREATE BLOCK

CREATE SCHEMA music;

CREATE TABLE music.PERFORMERS
(
  performer_id SERIAL PRIMARY KEY,
  performer_nm VARCHAR(100) NOT NULL,
  birth_dt     DATE,
  nickname_nm  VARCHAR(100) NOT NULL
);

CREATE TABLE music.ALBUMS
(
  album_id   SERIAL PRIMARY KEY,
  album_nm   VARCHAR(100) NOT NULL,
  release_dt SMALLINT CHECK (release_dt IS NULL OR release_dt >= 0)
);

CREATE TABLE music.TRACKS
(
  track_id SERIAL PRIMARY KEY,
  track_nm VARCHAR(100) NOT NULL
);

CREATE TABLE music.CONCERTS
(
  concert_id SERIAL PRIMARY KEY,
  concert_dt DATE,
  country    VARCHAR(20),
  town       VARCHAR(20)
);

CREATE TABLE music.LABELS
(
  label_id SERIAL PRIMARY KEY,
  label_nm VARCHAR(100) NOT NULL
);

CREATE TABLE music.CLIPS
(
  clip_id     SERIAL PRIMARY KEY,
  clip_nm     VARCHAR(100) NOT NULL,
  producer_nm VARCHAR(100) NOT NULL,
  views_cnt   INTEGER
);

CREATE TABLE music.TRACKS_X_PERFORMERS
(
  track_id     SERIAL REFERENCES music.TRACKS (track_id),
  performer_id SERIAL REFERENCES music.PERFORMERS (performer_id),
  PRIMARY KEY (track_id, performer_id)
);

CREATE TABLE music.ALBUMS_X_PERFORMERS
(
  album_id     SERIAL REFERENCES music.ALBUMS (album_id),
  performer_id SERIAL REFERENCES music.PERFORMERS (performer_id),
  PRIMARY KEY (album_id, performer_id)
);

CREATE TABLE music.PERFORMERS_X_CONCERTS
(
  concert_id   SERIAL REFERENCES music.CONCERTS (concert_id),
  performer_id SERIAL REFERENCES music.PERFORMERS (performer_id),
  PRIMARY KEY (concert_id, performer_id)
);

CREATE TABLE music.TRACKS_X_ALBUMS
(
  track_id SERIAL REFERENCES music.TRACKS (track_id),
  album_id SERIAL REFERENCES music.ALBUMS (album_id),
  PRIMARY KEY (track_id, album_id)
);

CREATE TABLE music.TRACKS_X_CLIPS
(
  track_id SERIAL REFERENCES music.TRACKS (track_id),
  clip_id  SERIAL REFERENCES music.CLIPS (clip_id),
  PRIMARY KEY (track_id, clip_id)
);

CREATE TABLE music.LABELS_X_PERFORMERS
(
  label_id     SERIAL REFERENCES music.LABELS (label_id),
  performer_id SERIAL REFERENCES music.PERFORMERS (performer_id),
  PRIMARY KEY (label_id, performer_id)
);

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (1, 'Kanye Omari West', '8-JUN-1977', 'Kanye West');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (2, 'Aubrey Drake Graham', '24-OCT-1986', 'Drake');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (3, 'Marshall Bruce Mathers III', '17-OCT-1972', 'Eminem');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (4, 'Curtis James Jackson III', '6-JUL-1975', '50 Cent');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (5, 'Calvin Cordozar Broadus Jr.', '20-OCT-1971', 'Snoop Dogg');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (6, 'Shayaa Bin Abraham-Joseph', '22-OCT-1992', '21 Savage');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (7, 'Micheal Ray Stevenson', '19-NOV-1989', 'Tyga');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (8, 'Rakim Mayers', '3-OCT-1988', 'A$AP Rocky');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (9, 'Nayvadius DeMun Wilburn', '20-NOV-1983', 'Future');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (10, 'Jacques Berman Webster II', '30-APR-1992', 'Travis Scott');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (11, 'Ricardo Valdez Valentine', '24-JUN-1992', '6LACK');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (12, 'Jahseh Dwayne Ricardo Onfroy', '23-JAN-1998', 'XXXTentacion');

INSERT INTO music.PERFORMERS (performer_id, performer_nm, birth_dt, nickname_nm)
VALUES (13, 'Gustav Elijah Åhr', '1-NOV-1996', 'Lil Peep');



INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (1, 'I Love It', 2018);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (2, 'Watch The Throne', 2011);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (3, 'Scorpion', 2018);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (4, 'Views', 2016);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (5, 'Rap God', 2013);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (6, 'Candy Shop', 2005);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (7, '220', 2018);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (8, 'i am > i was', 2018);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (9, 'Girls Have Fun', 2019);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (10, 'Testing', 2018);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (11, 'What A Time To Be Alive', 2015);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (12, 'Birds In The Trap Sing McKnight', 2016);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (13, 'Free 6LACK', 2016);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (14, '?', 2016);

INSERT INTO music.ALBUMS (album_id, album_nm, release_dt)
VALUES (15, 'Come Over When You''re Sober, Pt. 1', 2017);



INSERT INTO music.CLIPS (clip_id, clip_nm, producer_nm, views_cnt)
VALUES (1, 'I Love It', 'Kanye West, DJ Clark Kent, CBMix, Ronny J', 436104880);

INSERT INTO music.CLIPS (clip_id, clip_nm, producer_nm, views_cnt)
VALUES (2, 'Hotline Bling', 'Nineteen85', 1507530936);

INSERT INTO music.CLIPS (clip_id, clip_nm, producer_nm, views_cnt)
VALUES (3, 'Berzerk', 'Rick Rubin', 233496411);

INSERT INTO music.CLIPS (clip_id, clip_nm, producer_nm, views_cnt)
VALUES (4, 'Candy Shop', 'Scott Storch', 491000000);

INSERT INTO music.CLIPS (clip_id, clip_nm, producer_nm, views_cnt)
VALUES (5, 'a lot', 'Aisultan Seitov', 112549574);

INSERT INTO music.CLIPS (clip_id, clip_nm, producer_nm, views_cnt)
VALUES (6, 'Girls Have Fun', 'Lou Cheruy Zidi', 56636129);

INSERT INTO music.CLIPS (clip_id, clip_nm, producer_nm, views_cnt)
VALUES (7, 'Goosebumps', 'Rob Lattermans', 282792650);

INSERT INTO music.CLIPS (clip_id, clip_nm, producer_nm, views_cnt)
VALUES (8, 'Rap God', 'DVLP, Filthy', 868942376);

INSERT INTO music.CLIPS (clip_id, clip_nm, producer_nm, views_cnt)
VALUES (9, 'Moonlight', 'Barri Jenckins', 329392489);

INSERT INTO music.CLIPS (clip_id, clip_nm, producer_nm, views_cnt)
VALUES (10, 'Save Thar Shit', 'Smokeasac', 188850281);



INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (1, '31-MAY-2019', 'Phoenix', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (2, '23-APR-2019', 'Amsterdam', 'Netherlands');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (3, '25-APR-2019', 'Amsterdam', 'Netherlands');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (4, '26-APR-2019', 'Amsterdam', 'Netherlands');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (5, '4-MAY-2019', 'Las Vegas', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (6, '5-MAY-2019', 'Las Vegas', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (7, '18-MAY-2019', 'Las Vegas', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (8, '31-MAY-2019', 'Phoenix', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (9, '27-SEP-2019', 'Rio De Janeiro', 'Brazil');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (10, '1-JUN-2019', 'Patchogue', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (11, '28-JUN-2019', 'Brooklyn', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (12, '4-MAY-2019', 'Bonner Springs', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (13, '10-MAY-2019', 'Miami Gardens', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (14, '11-MAY-2019', 'Miami Gardens', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (15, '1-JUN-2019', 'Philadelphia', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (16, '1-AUG-2019', 'Chikago', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (17, '2-AUG-2019', 'Chikago', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (18, '27-JUN-2019', 'Paris', 'France');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (19, '10-JUL-2019', 'Moscow', 'Russia');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (20, '9-MAY-2019', 'Singapore', 'Singapore');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (21, '26-JUN-2019', 'Istanbul', 'Turkey');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (22, '6-JUL-2019', 'London', 'UK');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (23, '7-JUL-2019', 'Dublin', 'Ireland');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (24, '10-MAY-2019', 'Miami Gardens', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (25, '24-MAY-2019', 'Boston', 'USA');

INSERT INTO music.CONCERTS (concert_id, concert_dt, town, country)
VALUES (26, '28-JUN-2019', 'Stockholm', 'Sweden');



INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (190, 'I Love It');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (1, ' Lift Off');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (2, ' Ni**as In Paris');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (3, ' Otis');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (4, ' Gotta Have It');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (5, ' New Day');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (6, ' Thats My Bitch');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (7, ' Welcome To The Jungle');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (8, ' Who Gon Stop Me');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (9, ' Murder To Excellence');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (10, ' Made In America');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (11, ' Why I Love You');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (12, ' Survival');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (13, ' Nonstop');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (14, ' Elevate');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (15, ' Emotionless');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (16, ' God s Plan');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (17, ' I m Upset');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (18, ' 8 Out Of 10');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (19, ' Mob Ties');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (20, ' Can’t Take A Joke');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (21, ' Sandra’s Rose');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (22, ' Talk Up');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (23, ' Is There More');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (24, ' Peak');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (25, ' Summer Games');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (26, ' Jaded');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (27, ' Nice For What');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (28, ' Finesse');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (29, ' Ratchet Happy Birthday');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (30, ' That’s How You Feel');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (31, ' Blue Tint');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (32, ' In My Feelings');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (33, ' Don’t Matter To Me');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (34, ' After Dark');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (35, ' Final Fantasy');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (36, ' March 14');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (37, ' Keep The Family Close');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (38, ' 9');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (39, ' U With Me?');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (40, ' Feel No Ways');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (41, ' Hype');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (42, ' Weston Road Flows');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (43, ' Redemption');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (44, ' With You');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (45, ' Faithful');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (46, ' Still Here');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (47, ' Controlla');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (48, ' One Dance');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (49, ' Grammys');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (50, ' Childs Play');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (51, ' Pop Style');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (52, ' Too Good');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (53, ' Summers Over Interlude');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (54, ' Fire & Desire');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (55, ' Views');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (56, ' Hotline Bling');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (57, ' Bad Guy');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (58, ' Parking Lot');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (59, ' Rhyme Or Reason');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (60, ' So Much Better');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (61, ' Survival');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (62, ' Legacy');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (63, ' Asshole');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (64, ' Berzerk');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (65, ' Rap God');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (66, ' Brainless');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (67, ' Stronger Than I Was');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (68, ' The Monster');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (69, ' So Far...');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (70, ' Love Game');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (71, ' Headlights');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (72, ' Evil Twin');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (73, ' Baby');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (74, ' Desperation');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (75, ' Groundhog Day');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (76, ' Beautiful Pain');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (77, ' Wicked Ways');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (78, ' Candy Shop');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (79, ' Disco Inferno');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (80, ' 220 (intro)');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (81, ' See Me Fall');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (82, ' I Aint Holdin Back');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (83, ' Maintain');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (84, ' The World Is Cold');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (85, ' I Wanna Fly');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (86, ' A Man');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (87, ' Lovin You, Lovin Me');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (88, ' Dangerous');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (89, ' Money');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (90, ' I.C.U.');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (91, ' Uthalevl');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (92, ' 220');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (93, ' Risin Son');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (94, ' a lot');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (95, ' break da law');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (96, ' a&t');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (97, ' out for the night');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (98, ' gun smoke');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (99, ' 1.5');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (100, ' all my friends');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (101, ' can t leave without it');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (102, ' asmr');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (103, ' ball w/o you');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (104, ' good day');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (105, ' pad lock');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (106, ' monster');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (107, ' letter 2 my momma');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (108, ' 4L');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (109, ' out for the night');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (110, ' Girls Have Fun');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (111, ' Distorted Records');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (112, ' A$AP Forever REMIX');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (113, ' Tony Tone');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (114, ' Fukk Sleep');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (115, ' Praise The Lord (Da Shine)');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (116, ' CALLDROPS');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (117, ' Buck Shots');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (118, ' Gunz N Butter');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (119, ' Brotha Man');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (120, ' OG Beeper');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (121, ' Kids Turned Out Fine');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (122, ' Hun43rd');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (123, ' Changes');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (124, ' Black Tux, White Collar');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (125, ' Purity');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (126, ' Digital Dash');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (127, ' Big Rings');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (128, ' Live From The Gutter');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (129, ' Diamonds Dancing');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (130, ' Scholarships');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (131, ' Plastic Bag');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (132, ' I m The Plug');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (133, ' Change Locations');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (134, ' Jumpman');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (135, ' Jersey');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (136, ' 30 for 30 Freestyle');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (137, ' the ends');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (138, ' way back');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (139, ' coordinate');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (140, ' through the late night');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (141, ' beibs in the trap');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (142, ' sdp interlude');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (143, ' sweet sweet');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (144, ' outside');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (145, ' goosebumps');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (146, ' first take');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (147, ' pick up the phone');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (148, ' lose');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (149, ' guidance');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (150, ' wonderful');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (151, ' Never Know');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (152, ' Rules');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (153, ' PRBLMS');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (154, ' Free');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (155, ' Learn Ya');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (156, ' MTFU');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (157, ' Luving U');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (158, ' Gettin Old');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (159, ' Worst Luck');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (160, ' Ex Calling');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (161, ' Alone / EA6');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (162, ' Glock Six');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (163, ' In Between');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (164, ' One Way');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (165, ' Introduction (instructions)');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (166, ' ALONE, PART 3');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (167, ' Moonlight');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (168, ' SAD!');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (169, ' the remedy for a broken heart (why am I so in love)');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (170, ' Floor 555');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (171, ' NUMB');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (172, ' infinity (888)');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (173, ' going down!');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (174, ' Pain = BESTFRIEND');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (175, ' $$$');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (176, ' love yourself (interlude)');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (177, ' SMASH!');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (178, ' I don’t even speak spanish lol');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (179, ' changes');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (180, ' Hope');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (181, ' schizophrenia');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (182, ' before I close my eyes');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (183, ' Benz Truck (гелик)');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (184, ' Save That Shit');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (185, ' Awful Things');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (186, ' U Said');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (187, ' Better Off (Dying)');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (188, ' The Brightside');

INSERT INTO music.TRACKS (track_id, track_nm)
VALUES (189, ' Problems');



INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (190, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (1, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (2, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (3, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (4, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (5, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (6, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (7, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (8, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (9, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (10, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (11, 1);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (12, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (13, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (14, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (15, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (16, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (17, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (18, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (19, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (20, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (21, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (22, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (23, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (24, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (25, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (26, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (27, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (28, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (29, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (30, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (31, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (32, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (33, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (34, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (35, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (36, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (37, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (38, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (39, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (40, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (41, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (42, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (43, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (44, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (45, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (46, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (47, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (48, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (49, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (50, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (51, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (52, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (53, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (54, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (55, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (56, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (57, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (58, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (59, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (60, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (61, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (62, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (63, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (64, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (65, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (66, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (67, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (68, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (69, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (70, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (71, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (72, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (73, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (74, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (75, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (76, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (77, 3);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (78, 4);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (79, 4);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (80, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (81, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (82, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (83, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (84, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (85, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (86, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (87, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (88, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (89, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (90, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (91, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (92, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (93, 5);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (94, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (95, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (96, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (97, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (98, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (99, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (100, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (101, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (102, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (103, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (104, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (105, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (106, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (107, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (108, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (109, 6);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (110, 7);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (111, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (112, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (113, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (114, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (115, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (116, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (117, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (118, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (119, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (120, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (121, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (122, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (123, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (124, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (125, 8);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (126, 9);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (127, 9);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (128, 9);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (129, 9);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (130, 9);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (131, 9);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (132, 9);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (133, 9);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (134, 9);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (135, 9);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (136, 9);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (137, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (138, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (139, 10);

INSERT INTO music.TRACKS_X_PERFORMERS(track_id, performer_id)
VALUES (140, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (141, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (142, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (143, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (144, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (145, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (146, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (147, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (148, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (149, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (150, 10);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (151, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (152, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (153, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (154, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (155, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (156, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (157, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (158, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (159, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (160, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (161, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (162, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (163, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (164, 11);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (165, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (166, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (167, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (168, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (169, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (170, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (171, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (172, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (173, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (174, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (175, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (176, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (177, 2);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (178, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (179, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (180, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (181, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (182, 12);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (183, 13);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (184, 13);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (185, 13);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (186, 13);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (187, 13);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (188, 13);

INSERT INTO music.TRACKS_X_PERFORMERS (track_id, performer_id)
VALUES (189, 13);



INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (1, 1);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (2, 2);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (3, 2);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (4, 2);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (5, 2);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (6, 2);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (7, 2);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (8, 2);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (9, 2);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (10, 4);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (11, 4);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (12, 6);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (13, 6);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (14, 6);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (15, 6);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (16, 6);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (17, 6);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (18, 8);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (19, 8);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (20, 9);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (21, 9);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (22, 9);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (23, 9);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (24, 10);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (25, 10);

INSERT INTO music.PERFORMERS_X_CONCERTS (concert_id, performer_id)
VALUES (26, 10);



INSERT INTO music.LABELS (label_id, label_nm)
VALUES (1, 'GOOD Music');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (2, 'Young Money');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (3, 'Shady Records');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (4, 'G-Unit');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (5, 'Death Row Records');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (6, 'Def Jam');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (7, 'A$AP Worldwide');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (8, 'Grand Hustle');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (9, 'A1');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (10, 'Epic Records');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (11, 'Atlantic Records');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (12, '  Caroline Distribution');

INSERT INTO music.LABELS (label_id, label_nm)
VALUES (13, 'Columbia Records');



INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (1, 1);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (2, 1);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (3, 2);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (4, 2);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (5, 3);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (6, 4);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (7, 5);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (8, 6);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (9, 7);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (10, 8);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (11, 9);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (12, 10);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (13, 11);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (14, 12);

INSERT INTO music.ALBUMS_X_PERFORMERS (album_id, performer_id)
VALUES (15, 13);



INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (190, 1);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (1, 1);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (2, 2);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (3, 2);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (4, 2);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (5, 2);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (6, 2);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (7, 2);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (8, 2);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (9, 2);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (10, 2);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (11, 2);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (12, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (13, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (14, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (15, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (16, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (17, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (18, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (19, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (20, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (21, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (22, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (23, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (24, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (25, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (26, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (27, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (28, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (29, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (30, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (31, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (32, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (33, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (34, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (35, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (36, 3);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (37, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (38, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (39, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (40, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (41, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (42, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (43, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (44, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (45, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (46, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (47, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (48, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (49, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (50, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (51, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (52, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (53, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (54, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (55, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (56, 4);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (57, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (58, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (59, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (60, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (61, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (62, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (63, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (64, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (65, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (66, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (67, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (68, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (69, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (70, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (71, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (72, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (73, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (74, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (75, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (76, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (77, 5);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (78, 6);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (79, 6);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (80, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (81, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (82, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (83, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (84, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (85, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (86, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (87, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (88, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (89, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (90, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (91, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (92, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (93, 7);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (94, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (95, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (96, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (97, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (98, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (99, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (100, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (101, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (102, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (103, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (104, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (105, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (106, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (107, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (108, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (109, 8);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (110, 9);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (111, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (112, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (113, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (114, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (115, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (116, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (117, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (118, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (119, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (120, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (121, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (122, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (123, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (124, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (125, 10);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (126, 11);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (127, 11);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (128, 11);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (129, 11);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (130, 11);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (131, 11);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (132, 11);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (133, 11);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (134, 11);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (135, 11);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (136, 11);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (137, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (138, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (139, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (140, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (141, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (142, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (143, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (144, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (145, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (146, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (147, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (148, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (149, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (150, 12);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (151, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (152, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (153, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (154, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (155, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (156, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (157, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (158, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (159, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (160, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (161, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (162, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (163, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (164, 13);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (165, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (166, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (167, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (168, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (169, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (170, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (171, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (172, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (173, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (174, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (175, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (176, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (177, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (178, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (179, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (180, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (181, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (182, 14);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (183, 15);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (184, 15);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (185, 15);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (186, 15);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (187, 15);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (188, 15);

INSERT INTO music.TRACKS_X_ALBUMS (track_id, album_id)
VALUES (189, 15);



INSERT INTO music.TRACKS_X_CLIPS (track_id, clip_id)
VALUES (190, 1);

INSERT INTO music.TRACKS_X_CLIPS (track_id, clip_id)
VALUES (56, 2);

INSERT INTO music.TRACKS_X_CLIPS (track_id, clip_id)
VALUES (64, 3);

INSERT INTO music.TRACKS_X_CLIPS (track_id, clip_id)
VALUES (78, 4);

INSERT INTO music.TRACKS_X_CLIPS (track_id, clip_id)
VALUES (94, 5);

INSERT INTO music.TRACKS_X_CLIPS (track_id, clip_id)
VALUES (110, 6);

INSERT INTO music.TRACKS_X_CLIPS (track_id, clip_id)
VALUES (145, 7);

INSERT INTO music.TRACKS_X_CLIPS (track_id, clip_id)
VALUES (65, 8);

INSERT INTO music.TRACKS_X_CLIPS (track_id, clip_id)
VALUES (167, 9);

INSERT INTO music.TRACKS_X_CLIPS (track_id, clip_id)
VALUES (184, 10);



INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (1, 1);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (2, 2);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (3, 3);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (4, 4);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (5, 5);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (6, 6);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (7, 7);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (8, 8);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (9, 9);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (10, 10);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (11, 11);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (12, 12);

INSERT INTO music.LABELS_X_PERFORMERS (label_id, performer_id)
VALUES (13, 13);


/* выводим id исполнителей, которые родились позже 1 января 1985 */
SELECT performer_id
FROM music.PERFORMERS
WHERE birth_dt > '01-JAN-1985';

/* вывродим в порядке возрастания названия альбомов и даты их релиза, где дата релиза >= 2016 г. */
SELECT album_nm, release_dt
FROM music.ALBUMS
WHERE release_dt >= 2016
ORDER BY release_dt ASC;

/* выводим id концертов, страну концерта, где концерт пройдет позднее 1 июня 2019 */
SELECT concert_id, town
FROM music.CONCERTS
WHERE concert_dt >= '01-JUN-2019';

/* выводим количество клипов, где просмотров больше 1000000 */
SELECT count(clip_nm)
FROM music.CLIPS
WHERE views_cnt >= 100000;


/* выводим названия альбомов в порядке возрастания их id те, в которых есть треки с клипами*/
SELECT album_nm
FROM music.ALBUMS
WHERE album_id IN (
  SELECT DISTINCT album_id
  FROM music.TRACKS_X_ALBUMS
         INNER JOIN music.TRACKS_X_CLIPS
                    ON music.TRACKS_X_ALBUMS.track_id = music.TRACKS_X_CLIPS.track_id
  ORDER BY album_id ASC);

/* выводим названия клипов, где количество просмотров больше 5000000 */
SELECT clip_nm
FROM music.CLIPS
WHERE views_cnt >= 5000000;

/* выводим названия леблов, у чьих исполнителей концерты проходили в Англии или Швеции */
SELECT label_nm
FROM music.LABELS
WHERE label_id IN (
  SELECT label_id
  FROM music.LABELS_X_PERFORMERS
         INNER JOIN music.PERFORMERS_X_CONCERTS
                    ON labels_x_performers.performer_id = performers_x_concerts.performer_id
  WHERE music.LABELS_X_PERFORMERS.performer_id IN (
    SELECT performer_id
    FROM music.PERFORMERS_X_CONCERTS
           INNER JOIN music.CONCERTS
                      ON performers_x_concerts.concert_id = concerts.concert_id
    WHERE country = 'UK'
       OR country = 'Sweden')
)
;


/* создаем представление - таблица летних концертов 2019 года*/
CREATE VIEW summer_concerts AS
SELECT town, country, concert_dt
FROM music.CONCERTS
WHERE concert_dt >= '01-JUN-2019'
  AND concert_dt <= '31-AUG-2019';


/* создаем представление - таблица никнеймов исполнителей, дата релиза альбома - позднее 2016 года*/

DROP VIEW latest_performers;

CREATE VIEW latest_performers AS
SELECT DISTINCT nickname_nm
FROM music.PERFORMERS
       INNER JOIN music.ALBUMS_X_PERFORMERS
                  ON music.PERFORMERS.performer_id = music.ALBUMS_X_PERFORMERS.performer_id
WHERE music.PERFORMERS.performer_id IN (
  SELECT performer_id
  FROM music.ALBUMS_X_PERFORMERS
         INNER JOIN music.ALBUMS
                    ON music.ALBUMS_X_PERFORMERS.album_id = music.ALBUMS.album_id
  WHERE release_dt >= '2016'
);


SELECT *
FROM latest_performers;



CREATE VIEW latest_performers2 AS
SELECT DISTINCT nickname_nm
FROM music.PERFORMERS
       INNER JOIN music.ALBUMS_X_PERFORMERS
                  ON music.PERFORMERS.performer_id = music.ALBUMS_X_PERFORMERS.performer_id
       INNER JOIN music.ALBUMS
                  ON music.ALBUMS_X_PERFORMERS.album_id = music.ALBUMS.album_id
WHERE release_dt >= '2016';


SELECT *
FROM latest_performers2;


/* создаем представление - таблица со всеми данными о концертах, кроме id*/
CREATE VIEW all_you_know_about_clips AS
SELECT clip_nm, producer_nm, views_cnt
FROM music.CLIPS;


SELECT *
FROM all_you_know_about_clips;


CREATE OR REPLACE FUNCTION Tracks(album VARCHAR(100))
  RETURNS TABLE
          (
            track_id INTEGER,
            track_nm VARCHAR(100)
          )
AS
$$
BEGIN
  IF album = ''
  THEN
    RAISE EXCEPTION 'invalid album';
  END IF;

  RETURN QUERY SELECT T.track_id, T.track_nm
               FROM music.Tracks T
                      INNER JOIN music.TRACKS_X_ALBUMS
                                 ON T.track_id = TRACKS_X_ALBUMS.track_id
               WHERE T.track_id IN (
                 SELECT track_id
                 FROM music.TRACKS_X_ALBUMS
                        INNER JOIN music.ALBUMS
                                   ON TRACKS_X_ALBUMS.album_id = ALBUMS.album_id
                 WHERE album = album_nm
               );
END;

$$ LANGUAGE plpgsql;

SELECT *
FROM Tracks(CAST('Scorpion' AS VARCHAR(100)));


CREATE OR REPLACE FUNCTION albums_in_the_year(year INTEGER)
  RETURNS TABLE
          (
            album_id INTEGER,
            album_nm VARCHAR(100)
          )
AS
$$
BEGIN
  IF (year > 2019) AND (year <= 0)
  THEN
    RAISE EXCEPTION 'invalid year';
  END IF;

  RETURN QUERY
    SELECT A.album_id, A.album_nm
    FROM music.ALBUMS A
    WHERE year = release_dt;
END;
$$ LANGUAGE plpgsql;


SELECT *
FROM albums_in_the_year(2016);



CREATE OR REPLACE FUNCTION correct_delete() RETURNS TRIGGER AS
$$
BEGIN

  DELETE
  FROM music.CLIPS
  WHERE clip_id IN (
    SELECT clip_id
    FROM music.TRACKS_X_CLIPS
    WHERE track_id IN (
      SELECT track_id
      FROM music.TRACKS_X_ALBUMS
      WHERE album_id = OLD.album_id
    )
  );
  IF NOT FOUND THEN RETURN NULL; END IF;

  DELETE
  FROM music.TRACKS_X_CLIPS
  WHERE track_id IN (
    SELECT track_id
    FROM music.TRACKS_X_ALBUMS
    WHERE album_id = OLD.album_id
  );
  IF NOT FOUND THEN RETURN NULL; END IF;

  DELETE
  FROM music.TRACKS_X_PERFORMERS
  WHERE track_id IN (
    SELECT track_id
    FROM music.TRACKS_X_ALBUMS
    WHERE album_id = OLD.album_id
  );
  IF NOT FOUND THEN RETURN NULL; END IF;


  DELETE
  FROM music.TRACKS
  WHERE track_id IN (
    SELECT track_id
    FROM music.TRACKS_X_ALBUMS
    WHERE album_id = OLD.album_id
  );
  IF NOT FOUND THEN RETURN NULL; END IF;


  DELETE FROM music.TRACKS_X_ALBUMS WHERE album_id = OLD.album_id;
  IF NOT FOUND THEN RETURN NULL; END IF;


  RETURN OLD;
END;
$$
  LANGUAGE plpgsql;

CREATE TRIGGER check_delete1
  BEFORE DELETE
  ON music.ALBUMS
  FOR EACH ROW
EXECUTE PROCEDURE correct_delete();

DELETE
FROM music.ALBUMS
WHERE album_nm = '?';

SELECT *
FROM music.ALBUMS;

SELECT*
FROM music.TRACKS;

SELECT *
FROM music.TRACKS_X_ALBUMS;

SELECT *
FROM music.TRACKS_X_CLIPS;



CREATE OR REPLACE FUNCTION correct_changes_to_concerts() RETURNS TRIGGER AS
$$
BEGIN
  IF (TG_OP = 'UPDATE') THEN
    UPDATE music.CONCERTS SET concert_dt = NEW.concert_dt where concert_dt = OLD.concert_dt;
    IF NOT FOUND THEN RETURN NULL; END IF;
    RETURN NEW;
  END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER correct_changes_to_concerts1
  BEFORE UPDATE
  ON summer_concerts
EXECUTE PROCEDURE correct_changes_to_concerts();

UPDATE summer_concerts
SET town = 'USA'
WHERE concert_dt = '07-JUL-2019';

SELECT *
FROM music.CONCERTS;



CREATE ROLE administrators WITH LOGIN PASSWORD 'adminadmin';
GRANT ALL PRIVILEGES ON SCHEMA music TO administrators;


CREATE ROLE artists WITH LOGIN PASSWORD 'artistartist';
GRANT USAGE ON SCHEMA music to artists;
GRANT UPDATE, INSERT ON music.ALBUMS, music.TRACKS, music.TRACKS_X_ALBUMS TO artists;


CREATE ROLE summer_managers WITH LOGIN PASSWORD 'summer';
GRANT USAGE ON SCHEMA music to summer_managers;
GRANT UPDATE, INSERT, DELETE ON summer_concerts TO summer_managers;

