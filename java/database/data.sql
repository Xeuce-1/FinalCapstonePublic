BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

insert into gallery (gallery_id, band_id, image_url) values (1, 8, 'http://dummyimage.com/239x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (2, 6, 'http://dummyimage.com/120x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (3, 1, 'http://dummyimage.com/100x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (4, 1, 'http://dummyimage.com/143x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (5, 7, 'http://dummyimage.com/139x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (6, 4, 'http://dummyimage.com/137x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (7, 4, 'http://dummyimage.com/100x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (8, 6, 'http://dummyimage.com/188x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (9, 8, 'http://dummyimage.com/159x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (10, 5, 'http://dummyimage.com/202x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (11, 2, 'http://dummyimage.com/124x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (12, 9, 'http://dummyimage.com/222x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (13, 6, 'http://dummyimage.com/170x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (14, 2, 'http://dummyimage.com/205x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (15, 5, 'http://dummyimage.com/116x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (16, 6, 'http://dummyimage.com/134x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (17, 7, 'http://dummyimage.com/225x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (18, 2, 'http://dummyimage.com/175x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (19, 2, 'http://dummyimage.com/241x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (20, 6, 'http://dummyimage.com/182x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (21, 8, 'http://dummyimage.com/202x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (22, 8, 'http://dummyimage.com/158x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (23, 6, 'http://dummyimage.com/102x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (24, 9, 'http://dummyimage.com/230x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (25, 5, 'http://dummyimage.com/179x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (26, 3, 'http://dummyimage.com/233x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (27, 6, 'http://dummyimage.com/192x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (28, 2, 'http://dummyimage.com/109x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (29, 5, 'http://dummyimage.com/202x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (30, 9, 'http://dummyimage.com/223x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (31, 10, 'http://dummyimage.com/209x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (32, 9, 'http://dummyimage.com/104x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (33, 10, 'http://dummyimage.com/172x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (34, 9, 'http://dummyimage.com/211x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (35, 6, 'http://dummyimage.com/179x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (36, 5, 'http://dummyimage.com/216x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (37, 4, 'http://dummyimage.com/210x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (38, 7, 'http://dummyimage.com/142x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (39, 3, 'http://dummyimage.com/192x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (40, 4, 'http://dummyimage.com/191x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (41, 4, 'http://dummyimage.com/239x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (42, 3, 'http://dummyimage.com/100x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (43, 1, 'http://dummyimage.com/121x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (44, 3, 'http://dummyimage.com/195x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (45, 3, 'http://dummyimage.com/231x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (46, 5, 'http://dummyimage.com/139x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (47, 7, 'http://dummyimage.com/175x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (48, 1, 'http://dummyimage.com/176x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (49, 7, 'http://dummyimage.com/181x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (50, 5, 'http://dummyimage.com/223x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (51, 6, 'http://dummyimage.com/165x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (52, 5, 'http://dummyimage.com/234x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (53, 6, 'http://dummyimage.com/167x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (54, 2, 'http://dummyimage.com/113x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (55, 2, 'http://dummyimage.com/190x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (56, 4, 'http://dummyimage.com/164x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (57, 10, 'http://dummyimage.com/210x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (58, 3, 'http://dummyimage.com/149x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (59, 9, 'http://dummyimage.com/124x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (60, 1, 'http://dummyimage.com/110x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (61, 3, 'http://dummyimage.com/139x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (62, 4, 'http://dummyimage.com/104x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (63, 6, 'http://dummyimage.com/119x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (64, 3, 'http://dummyimage.com/137x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (65, 3, 'http://dummyimage.com/212x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (66, 4, 'http://dummyimage.com/107x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (67, 9, 'http://dummyimage.com/121x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (68, 3, 'http://dummyimage.com/128x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (69, 10, 'http://dummyimage.com/181x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (70, 4, 'http://dummyimage.com/215x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (71, 1, 'http://dummyimage.com/199x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (72, 5, 'http://dummyimage.com/106x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (73, 2, 'http://dummyimage.com/111x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (74, 2, 'http://dummyimage.com/173x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (75, 2, 'http://dummyimage.com/139x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (76, 1, 'http://dummyimage.com/118x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (77, 6, 'http://dummyimage.com/199x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (78, 1, 'http://dummyimage.com/229x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (79, 9, 'http://dummyimage.com/120x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (80, 4, 'http://dummyimage.com/144x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (81, 5, 'http://dummyimage.com/189x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (82, 5, 'http://dummyimage.com/177x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (83, 9, 'http://dummyimage.com/190x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (84, 2, 'http://dummyimage.com/124x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (85, 6, 'http://dummyimage.com/116x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (86, 4, 'http://dummyimage.com/210x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (87, 4, 'http://dummyimage.com/119x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (88, 6, 'http://dummyimage.com/173x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (89, 1, 'http://dummyimage.com/176x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (90, 4, 'http://dummyimage.com/168x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (91, 6, 'http://dummyimage.com/177x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (92, 4, 'http://dummyimage.com/219x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (93, 3, 'http://dummyimage.com/136x100.png/ff4444/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (94, 4, 'http://dummyimage.com/183x100.png/cc0000/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (95, 5, 'http://dummyimage.com/143x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (96, 7, 'http://dummyimage.com/154x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (97, 4, 'http://dummyimage.com/101x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (98, 1, 'http://dummyimage.com/144x100.png/dddddd/000000');
insert into gallery (gallery_id, band_id, image_url) values (99, 2, 'http://dummyimage.com/164x100.png/5fa2dd/ffffff');
insert into gallery (gallery_id, band_id, image_url) values (100, 9, 'http://dummyimage.com/144x100.png/cc0000/ffffff');

insert into bands ( manager_id, bandname, description, cover_image_url) values ( 10, 'Lake Street Dive', 'Lake Street Dive is an American multi-genre band that was formed in 2004 at the New England Conservatory of Music in Boston. The band''s founding members are Rachael Price, Mike "McDuck" Olson, Bridget Kearney, and Mike Calabrese.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Lake_Street_Dive_live_2017_%28cropped%29.jpg/1920px-Lake_Street_Dive_live_2017_%28cropped%29.jpg');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 10, 'Modest Mouse', 'Modest Mouse is an American rock band formed in 1993 in Issaquah, Washington, and currently based in Portland, Oregon. The founding members were lead singer/guitarist Isaac Brock, drummer Jeremiah Green and bassist Eric Judy. Strongly influenced by Pavement, Pixies, XTC, and Talking Heads.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Modest_Mouse_Pittsburgh_2021.jpg/1920px-Modest_Mouse_Pittsburgh_2021.jpg');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 10, 'Fallout Boy', 'Fall Out Boy is an American rock band formed in Wilmette, Illinois, a suburb of Chicago, in 2001. The band consists of lead vocalist and rhythm guitarist Patrick Stump, bassist Pete Wentz, drummer Andy Hurley, and lead guitarist Joe Trohman.', 'https://media.pitchfork.com/photos/63d930e793bd6d85eaa50339/2:1/w_1920,c_limit/Fall-Out-Boy.jpg');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 10, 'Sublime', 'Sublime was an American rock band from Long Beach, California, formed in 1988.[1] The band''s line-up, consistent throughout its duration, consisted of Bradley Nowell (vocals and guitar), Eric Wilson (bass), and Bud Gaugh (drums).', 'https://neonmusic.online/wp-content/uploads/2023/11/JEG6TWN4YOKLT65IH4G3HCTIOQ.jpg');

INSERT INTO genres(genre_name) VALUES ('Indie Rock');
INSERT INTO genres(genre_name) VALUES ('Alternative Rock');
INSERT INTO genres(genre_name) VALUES ('Alternative');
INSERT INTO genres(genre_name) VALUES ('Indie');
INSERT INTO genres(genre_name) VALUES ('R&B');
INSERT INTO genres(genre_name) VALUES ('Soul');
INSERT INTO genres(genre_name) VALUES ('Pop Rock');
INSERT INTO genres(genre_name) VALUES ('Pop');
INSERT INTO genres(genre_name) VALUES ('Emo Pop');

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Alternative'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Indie'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Modest Mouse')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Alternative Rock'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Modest Mouse')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Indie Rock'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Sublime')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'R&B'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Sublime')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Soul'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Pop Rock'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Pop'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Emo Pop'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Alternative Rock'));




COMMIT TRANSACTION;
