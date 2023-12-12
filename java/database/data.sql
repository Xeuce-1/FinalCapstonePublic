BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

insert into bands ( manager_id, bandname, description, cover_image_url) values ( 10, 'Lake Street Dive', 'Lake Street Dive is an American multi-genre band that was formed in 2004 at the New England Conservatory of Music in Boston. The band''s founding members are Rachael Price, Mike "McDuck" Olson, Bridget Kearney, and Mike Calabrese.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Lake_Street_Dive_live_2017_%28cropped%29.jpg/1920px-Lake_Street_Dive_live_2017_%28cropped%29.jpg');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 10, 'Modest Mouse', 'Modest Mouse is an American rock band formed in 1993 in Issaquah, Washington, and currently based in Portland, Oregon. The founding members were lead singer/guitarist Isaac Brock, drummer Jeremiah Green and bassist Eric Judy. Strongly influenced by Pavement, Pixies, XTC, and Talking Heads.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Modest_Mouse_Pittsburgh_2021.jpg/1920px-Modest_Mouse_Pittsburgh_2021.jpg');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 10, 'Fallout Boy', 'Fall Out Boy is an American rock band formed in Wilmette, Illinois, a suburb of Chicago, in 2001. The band consists of lead vocalist and rhythm guitarist Patrick Stump, bassist Pete Wentz, drummer Andy Hurley, and lead guitarist Joe Trohman.', 'https://media.pitchfork.com/photos/63d930e793bd6d85eaa50339/2:1/w_1920,c_limit/Fall-Out-Boy.jpg');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 10, 'Sublime', 'Sublime was an American rock band from Long Beach, California, formed in 1988.[1] The band''s line-up, consistent throughout its duration, consisted of Bradley Nowell (vocals and guitar), Eric Wilson (bass), and Bud Gaugh (drums).', 'https://neonmusic.online/wp-content/uploads/2023/11/JEG6TWN4YOKLT65IH4G3HCTIOQ.jpg');

insert into gallery (band_id, image_url) values (4, 'http://dummyimage.com/215x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (5, 'http://dummyimage.com/234x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (2, 'http://dummyimage.com/167x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (10, 'http://dummyimage.com/237x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (4, 'http://dummyimage.com/101x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (2, 'http://dummyimage.com/238x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/133x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (12, 'http://dummyimage.com/216x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (7, 'http://dummyimage.com/119x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/214x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (10, 'http://dummyimage.com/135x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (6, 'http://dummyimage.com/103x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (3, 'http://dummyimage.com/140x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (2, 'http://dummyimage.com/214x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/166x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (8, 'http://dummyimage.com/139x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (6, 'http://dummyimage.com/108x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (13, 'http://dummyimage.com/121x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (2, 'http://dummyimage.com/100x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (3, 'http://dummyimage.com/112x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/115x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (2, 'http://dummyimage.com/229x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (12, 'http://dummyimage.com/113x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (13, 'http://dummyimage.com/234x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (4, 'http://dummyimage.com/245x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (6, 'http://dummyimage.com/247x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (11, 'http://dummyimage.com/193x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (3, 'http://dummyimage.com/133x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (3, 'http://dummyimage.com/164x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/243x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (10, 'http://dummyimage.com/131x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/234x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (9, 'http://dummyimage.com/210x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (10, 'http://dummyimage.com/117x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (6, 'http://dummyimage.com/127x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (10, 'http://dummyimage.com/243x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (4, 'http://dummyimage.com/202x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/243x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/129x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (9, 'http://dummyimage.com/152x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (11, 'http://dummyimage.com/127x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (4, 'http://dummyimage.com/205x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (13, 'http://dummyimage.com/147x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (11, 'http://dummyimage.com/180x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (8, 'http://dummyimage.com/183x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (8, 'http://dummyimage.com/225x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (11, 'http://dummyimage.com/134x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (2, 'http://dummyimage.com/191x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (12, 'http://dummyimage.com/118x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (13, 'http://dummyimage.com/137x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/110x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/180x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (5, 'http://dummyimage.com/104x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (7, 'http://dummyimage.com/202x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (10, 'http://dummyimage.com/190x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/175x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (8, 'http://dummyimage.com/240x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (9, 'http://dummyimage.com/168x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (13, 'http://dummyimage.com/231x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/108x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (6, 'http://dummyimage.com/167x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (8, 'http://dummyimage.com/172x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (6, 'http://dummyimage.com/216x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/209x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (6, 'http://dummyimage.com/217x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (10, 'http://dummyimage.com/105x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (4, 'http://dummyimage.com/220x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/249x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (7, 'http://dummyimage.com/121x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (13, 'http://dummyimage.com/156x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (10, 'http://dummyimage.com/247x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (13, 'http://dummyimage.com/176x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (4, 'http://dummyimage.com/205x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (7, 'http://dummyimage.com/155x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (10, 'http://dummyimage.com/142x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (10, 'http://dummyimage.com/100x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (5, 'http://dummyimage.com/188x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (13, 'http://dummyimage.com/143x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (7, 'http://dummyimage.com/248x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (13, 'http://dummyimage.com/150x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (13, 'http://dummyimage.com/217x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (3, 'http://dummyimage.com/156x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (7, 'http://dummyimage.com/170x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (11, 'http://dummyimage.com/120x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (5, 'http://dummyimage.com/202x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (8, 'http://dummyimage.com/237x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (8, 'http://dummyimage.com/202x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (9, 'http://dummyimage.com/114x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (8, 'http://dummyimage.com/168x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (13, 'http://dummyimage.com/108x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (12, 'http://dummyimage.com/231x100.png/dddddd/000000');
insert into gallery (band_id, image_url) values (2, 'http://dummyimage.com/159x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (12, 'http://dummyimage.com/135x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (6, 'http://dummyimage.com/108x100.png/ff4444/ffffff');
insert into gallery (band_id, image_url) values (10, 'http://dummyimage.com/219x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (1, 'http://dummyimage.com/145x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (2, 'http://dummyimage.com/210x100.png/5fa2dd/ffffff');
insert into gallery (band_id, image_url) values (2, 'http://dummyimage.com/157x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (8, 'http://dummyimage.com/170x100.png/cc0000/ffffff');
insert into gallery (band_id, image_url) values (12, 'http://dummyimage.com/197x100.png/cc0000/ffffff');


--Modest Mouse Dummy Images
insert into gallery (band_id, image_url) values (12, 'https://www.columbiatribune.com/gcdn/presto/2021/10/10/NA36/957ad07e-13a4-458f-92ab-405328c220c2-nsc_acl21_Sat_Modest_Mouse_9503.jpg?crop=1599,900,x0,y218&width=1599&height=900&format=pjpg&auto=webp');
insert into gallery (band_id, image_url) values (12, 'https://media2.houstonpress.com/hou/imager/u/slideshow/12082556/modestmouse_10082021_htx_voletaalvarez_1306.jpg');
insert into gallery (band_id, image_url) values (12, 'https://ewscripps.brightspotcdn.com/dims4/default/beecc1b/2147483647/strip/true/crop/4923x2769+0+514/resize/1280x720!/quality/90/?url=http%3A%2F%2Fewscripps-brightspot.s3.amazonaws.com%2F68%2F3b%2F495dda2f488db104148cfa5af80f%2Fap21214011592393.jpg');
insert into gallery (band_id, image_url) values (12, 'https://www.nme.com/wp-content/uploads/2022/03/modest-mouse-live.jpg');



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



-- NOTIFICATIONS TABLE
INSERT INTO notifications(subject, band_id, send_date, message)
VALUES
	('Brace yourselves, the quiet is over!', 12, NOW(), 'Hey Mouseketeers! We''re thrilled to announce that new music is on the horizon!  Expect fresh sounds, unexpected twists, and the classic Modest Mouse energy you know and love. Stay tuned for more details soon!')
	,('Get your dancing shoes ready!', 12, NOW(), 'We''re hitting the road again, and this time we''re bringing the party to your town!  Get ready for a night of unforgettable music, singalongs, and good vibes.  Tickets go on sale on [Date]! Don''t miss out!');

insert into notifications (subject, band_id, send_date, message) values ('Nam dui.', 11, '07/24/2023', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla suscipit ligula in lacus.', 2, '01/02/2023', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
insert into notifications (subject, band_id, send_date, message) values ('Donec dapibus.', 5, '08/18/2023', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
insert into notifications (subject, band_id, send_date, message) values ('In eleifend quam a odio.', 6, '10/22/2023', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
insert into notifications (subject, band_id, send_date, message) values ('Maecenas ut massa quis augue luctus tincidunt.', 10, '06/24/2023', 'In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into notifications (subject, band_id, send_date, message) values ('Fusce consequat.', 14, '03/29/2023', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi non quam nec dui luctus rutrum.', 2, '03/28/2023', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 3, '09/30/2023', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into notifications (subject, band_id, send_date, message) values ('In sagittis dui vel nisl.', 12, '01/29/2023', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi quis tortor id nulla ultrices aliquet.', 1, '04/03/2023', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
insert into notifications (subject, band_id, send_date, message) values ('Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 2, '11/13/2023', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
insert into notifications (subject, band_id, send_date, message) values ('In congue.', 14, '11/02/2023', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla ut erat id mauris vulputate elementum.', 7, '11/30/2023', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
insert into notifications (subject, band_id, send_date, message) values ('Nunc rhoncus dui vel sem.', 6, '09/27/2023', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into notifications (subject, band_id, send_date, message) values ('Ut tellus.', 13, '09/30/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into notifications (subject, band_id, send_date, message) values ('Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 5, '05/27/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
insert into notifications (subject, band_id, send_date, message) values ('Praesent blandit.', 6, '09/04/2023', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into notifications (subject, band_id, send_date, message) values ('Suspendisse accumsan tortor quis turpis.', 13, '02/16/2023', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
insert into notifications (subject, band_id, send_date, message) values ('Duis ac nibh.', 3, '06/12/2023', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (subject, band_id, send_date, message) values ('Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 7, '05/14/2023', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into notifications (subject, band_id, send_date, message) values ('Ut at dolor quis odio consequat varius.', 10, '01/01/2023', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into notifications (subject, band_id, send_date, message) values ('Praesent blandit.', 14, '03/11/2023', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into notifications (subject, band_id, send_date, message) values ('Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 10, '02/01/2023', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
insert into notifications (subject, band_id, send_date, message) values ('Aenean auctor gravida sem.', 11, '09/09/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into notifications (subject, band_id, send_date, message) values ('Etiam vel augue.', 10, '04/20/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into notifications (subject, band_id, send_date, message) values ('Curabitur in libero ut massa volutpat convallis.', 4, '12/19/2022', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (subject, band_id, send_date, message) values ('Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 2, '05/27/2023', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (subject, band_id, send_date, message) values ('Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 8, '12/05/2023', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
insert into notifications (subject, band_id, send_date, message) values ('Aenean sit amet justo.', 7, '06/15/2023', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
insert into notifications (subject, band_id, send_date, message) values ('Pellentesque eget nunc.', 6, '03/17/2023', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (subject, band_id, send_date, message) values ('Nullam molestie nibh in lectus.', 14, '07/06/2023', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
insert into notifications (subject, band_id, send_date, message) values ('Proin at turpis a pede posuere nonummy.', 6, '11/06/2023', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
insert into notifications (subject, band_id, send_date, message) values ('Ut at dolor quis odio consequat varius.', 7, '10/21/2023', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla ut erat id mauris vulputate elementum.', 1, '12/04/2023', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (subject, band_id, send_date, message) values ('Integer tincidunt ante vel ipsum.', 11, '02/13/2023', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (subject, band_id, send_date, message) values ('Quisque id justo sit amet sapien dignissim vestibulum.', 9, '08/10/2023', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi porttitor lorem id ligula.', 14, '02/13/2023', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into notifications (subject, band_id, send_date, message) values ('Sed accumsan felis.', 13, '01/19/2023', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (subject, band_id, send_date, message) values ('Integer ac neque.', 7, '08/31/2023', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi non lectus.', 12, '08/13/2023', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into notifications (subject, band_id, send_date, message) values ('Phasellus in felis.', 11, '07/04/2023', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi non quam nec dui luctus rutrum.', 10, '06/03/2023', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
insert into notifications (subject, band_id, send_date, message) values ('Duis mattis egestas metus.', 5, '11/03/2023', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into notifications (subject, band_id, send_date, message) values ('Proin interdum mauris non ligula pellentesque ultrices.', 3, '10/01/2023', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (subject, band_id, send_date, message) values ('Cras non velit nec nisi vulputate nonummy.', 3, '08/14/2023', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
insert into notifications (subject, band_id, send_date, message) values ('Curabitur in libero ut massa volutpat convallis.', 14, '12/30/2022', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 1, '03/24/2023', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (subject, band_id, send_date, message) values ('Etiam justo.', 9, '08/16/2023', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
insert into notifications (subject, band_id, send_date, message) values ('Duis consequat dui nec nisi volutpat eleifend.', 9, '07/31/2023', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
insert into notifications (subject, band_id, send_date, message) values ('Etiam justo.', 9, '03/13/2023', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
insert into notifications (subject, band_id, send_date, message) values ('In eleifend quam a odio.', 6, '08/28/2023', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
insert into notifications (subject, band_id, send_date, message) values ('Nam nulla.', 6, '07/23/2023', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
insert into notifications (subject, band_id, send_date, message) values ('Pellentesque ultrices mattis odio.', 11, '07/12/2023', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
insert into notifications (subject, band_id, send_date, message) values ('Maecenas tincidunt lacus at velit.', 4, '04/25/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
insert into notifications (subject, band_id, send_date, message) values ('In sagittis dui vel nisl.', 14, '05/16/2023', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
insert into notifications (subject, band_id, send_date, message) values ('Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 2, '04/05/2023', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into notifications (subject, band_id, send_date, message) values ('Maecenas pulvinar lobortis est.', 2, '02/02/2023', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into notifications (subject, band_id, send_date, message) values ('Fusce posuere felis sed lacus.', 2, '02/05/2023', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
insert into notifications (subject, band_id, send_date, message) values ('Donec posuere metus vitae ipsum.', 14, '04/16/2023', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into notifications (subject, band_id, send_date, message) values ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 14, '11/20/2023', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into notifications (subject, band_id, send_date, message) values ('Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 1, '05/16/2023', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
insert into notifications (subject, band_id, send_date, message) values ('Sed sagittis.', 1, '07/29/2023', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi ut odio.', 14, '07/16/2023', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into notifications (subject, band_id, send_date, message) values ('Aenean lectus.', 8, '11/07/2023', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into notifications (subject, band_id, send_date, message) values ('Mauris lacinia sapien quis libero.', 13, '12/26/2022', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi non lectus.', 11, '01/07/2023', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.');
insert into notifications (subject, band_id, send_date, message) values ('Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 11, '05/31/2023', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla suscipit ligula in lacus.', 8, '01/31/2023', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into notifications (subject, band_id, send_date, message) values ('Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 4, '05/08/2023', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into notifications (subject, band_id, send_date, message) values ('Donec ut mauris eget massa tempor convallis.', 6, '01/01/2023', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into notifications (subject, band_id, send_date, message) values ('Integer ac leo.', 5, '10/07/2023', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into notifications (subject, band_id, send_date, message) values ('Donec semper sapien a libero.', 3, '10/26/2023', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi non quam nec dui luctus rutrum.', 5, '06/21/2023', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into notifications (subject, band_id, send_date, message) values ('Cras non velit nec nisi vulputate nonummy.', 6, '04/14/2023', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
insert into notifications (subject, band_id, send_date, message) values ('Duis consequat dui nec nisi volutpat eleifend.', 13, '05/26/2023', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
insert into notifications (subject, band_id, send_date, message) values ('Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 13, '03/30/2023', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
insert into notifications (subject, band_id, send_date, message) values ('Duis bibendum.', 7, '06/22/2023', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi ut odio.', 7, '05/09/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into notifications (subject, band_id, send_date, message) values ('In hac habitasse platea dictumst.', 3, '10/07/2023', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi quis tortor id nulla ultrices aliquet.', 14, '09/12/2023', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (subject, band_id, send_date, message) values ('Vivamus vel nulla eget eros elementum pellentesque.', 4, '10/14/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into notifications (subject, band_id, send_date, message) values ('In hac habitasse platea dictumst.', 11, '04/19/2023', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into notifications (subject, band_id, send_date, message) values ('In blandit ultrices enim.', 10, '10/06/2023', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into notifications (subject, band_id, send_date, message) values ('Maecenas pulvinar lobortis est.', 7, '12/30/2022', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
insert into notifications (subject, band_id, send_date, message) values ('Nunc purus.', 3, '11/27/2023', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (subject, band_id, send_date, message) values ('Fusce posuere felis sed lacus.', 2, '05/15/2023', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
insert into notifications (subject, band_id, send_date, message) values ('Praesent lectus.', 12, '10/18/2023', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi a ipsum.', 9, '05/07/2023', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into notifications (subject, band_id, send_date, message) values ('Duis ac nibh.', 9, '10/12/2023', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 14, '02/19/2023', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into notifications (subject, band_id, send_date, message) values ('Donec dapibus.', 10, '06/17/2023', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
insert into notifications (subject, band_id, send_date, message) values ('Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 9, '08/21/2023', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi non lectus.', 10, '08/17/2023', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into notifications (subject, band_id, send_date, message) values ('Donec quis orci eget orci vehicula condimentum.', 7, '06/01/2023', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
insert into notifications (subject, band_id, send_date, message) values ('Quisque id justo sit amet sapien dignissim vestibulum.', 6, '07/31/2023', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (subject, band_id, send_date, message) values ('Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 11, '02/17/2023', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 6, '05/28/2023', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into notifications (subject, band_id, send_date, message) values ('Aenean lectus.', 2, '03/02/2023', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
insert into notifications (subject, band_id, send_date, message) values ('Quisque id justo sit amet sapien dignissim vestibulum.', 4, '06/07/2023', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into notifications (subject, band_id, send_date, message) values ('In hac habitasse platea dictumst.', 7, '12/18/2022', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (subject, band_id, send_date, message) values ('Ut tellus.', 5, '08/30/2023', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 5, '09/04/2023', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (subject, band_id, send_date, message) values ('Suspendisse potenti.', 3, '08/09/2023', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into notifications (subject, band_id, send_date, message) values ('Praesent blandit.', 14, '12/08/2023', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla tellus.', 11, '11/15/2023', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
insert into notifications (subject, band_id, send_date, message) values ('In hac habitasse platea dictumst.', 11, '07/21/2023', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
insert into notifications (subject, band_id, send_date, message) values ('Proin at turpis a pede posuere nonummy.', 9, '12/14/2022', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into notifications (subject, band_id, send_date, message) values ('In congue.', 8, '06/05/2023', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
insert into notifications (subject, band_id, send_date, message) values ('In blandit ultrices enim.', 9, '02/27/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into notifications (subject, band_id, send_date, message) values ('In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 6, '10/17/2023', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla ac enim.', 2, '03/25/2023', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.');
insert into notifications (subject, band_id, send_date, message) values ('Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 3, '10/13/2023', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
insert into notifications (subject, band_id, send_date, message) values ('In est risus, auctor sed, tristique in, tempus sit amet, sem.', 8, '10/06/2023', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.');
insert into notifications (subject, band_id, send_date, message) values ('Suspendisse potenti.', 8, '11/27/2023', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into notifications (subject, band_id, send_date, message) values ('Curabitur at ipsum ac tellus semper interdum.', 13, '11/08/2023', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
insert into notifications (subject, band_id, send_date, message) values ('Curabitur gravida nisi at nibh.', 1, '04/19/2023', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into notifications (subject, band_id, send_date, message) values ('In congue.', 2, '11/25/2023', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
insert into notifications (subject, band_id, send_date, message) values ('Nullam molestie nibh in lectus.', 2, '10/27/2023', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla tellus.', 3, '04/28/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into notifications (subject, band_id, send_date, message) values ('In blandit ultrices enim.', 13, '08/13/2023', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi non lectus.', 9, '09/10/2023', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
insert into notifications (subject, band_id, send_date, message) values ('Maecenas tincidunt lacus at velit.', 7, '05/26/2023', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
insert into notifications (subject, band_id, send_date, message) values ('Ut at dolor quis odio consequat varius.', 2, '06/21/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into notifications (subject, band_id, send_date, message) values ('Proin risus.', 8, '12/18/2022', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
insert into notifications (subject, band_id, send_date, message) values ('Vivamus vestibulum sagittis sapien.', 2, '01/11/2023', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
insert into notifications (subject, band_id, send_date, message) values ('Aliquam quis turpis eget elit sodales scelerisque.', 5, '07/01/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla justo.', 14, '09/22/2023', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi a ipsum.', 4, '11/02/2023', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into notifications (subject, band_id, send_date, message) values ('Integer tincidunt ante vel ipsum.', 7, '01/25/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (subject, band_id, send_date, message) values ('Nam nulla.', 11, '07/25/2023', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (subject, band_id, send_date, message) values ('Integer a nibh.', 8, '02/15/2023', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
insert into notifications (subject, band_id, send_date, message) values ('Maecenas rhoncus aliquam lacus.', 8, '04/15/2023', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into notifications (subject, band_id, send_date, message) values ('Fusce posuere felis sed lacus.', 6, '11/01/2023', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
insert into notifications (subject, band_id, send_date, message) values ('Phasellus in felis.', 3, '02/08/2023', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
insert into notifications (subject, band_id, send_date, message) values ('Vivamus in felis eu sapien cursus vestibulum.', 5, '11/23/2023', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into notifications (subject, band_id, send_date, message) values ('In hac habitasse platea dictumst.', 2, '09/28/2023', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 10, '07/12/2023', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into notifications (subject, band_id, send_date, message) values ('Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 3, '05/07/2023', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi porttitor lorem id ligula.', 6, '02/08/2023', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
insert into notifications (subject, band_id, send_date, message) values ('Aliquam quis turpis eget elit sodales scelerisque.', 3, '01/25/2023', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
insert into notifications (subject, band_id, send_date, message) values ('In hac habitasse platea dictumst.', 10, '05/27/2023', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into notifications (subject, band_id, send_date, message) values ('Cras pellentesque volutpat dui.', 14, '12/04/2023', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla tempus.', 3, '02/15/2023', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into notifications (subject, band_id, send_date, message) values ('Aenean sit amet justo.', 14, '02/24/2023', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into notifications (subject, band_id, send_date, message) values ('Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 1, '04/12/2023', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into notifications (subject, band_id, send_date, message) values ('Pellentesque eget nunc.', 11, '06/08/2023', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
insert into notifications (subject, band_id, send_date, message) values ('Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 2, '06/27/2023', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into notifications (subject, band_id, send_date, message) values ('Donec dapibus.', 7, '05/19/2023', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (subject, band_id, send_date, message) values ('Integer tincidunt ante vel ipsum.', 8, '12/25/2022', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into notifications (subject, band_id, send_date, message) values ('Vivamus vestibulum sagittis sapien.', 6, '12/10/2023', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
insert into notifications (subject, band_id, send_date, message) values ('Sed ante.', 10, '11/05/2023', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (subject, band_id, send_date, message) values ('Aliquam erat volutpat.', 13, '10/15/2023', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into notifications (subject, band_id, send_date, message) values ('Ut tellus.', 4, '05/17/2023', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla tellus.', 14, '07/24/2023', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (subject, band_id, send_date, message) values ('Fusce posuere felis sed lacus.', 10, '09/02/2023', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla facilisi.', 5, '06/08/2023', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into notifications (subject, band_id, send_date, message) values ('Curabitur convallis.', 5, '01/04/2023', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into notifications (subject, band_id, send_date, message) values ('Donec quis orci eget orci vehicula condimentum.', 5, '06/10/2023', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla ut erat id mauris vulputate elementum.', 1, '04/04/2023', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
insert into notifications (subject, band_id, send_date, message) values ('Pellentesque at nulla.', 3, '09/08/2023', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
insert into notifications (subject, band_id, send_date, message) values ('Cras pellentesque volutpat dui.', 2, '06/24/2023', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
insert into notifications (subject, band_id, send_date, message) values ('Cras non velit nec nisi vulputate nonummy.', 8, '05/13/2023', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla facilisi.', 6, '02/20/2023', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
insert into notifications (subject, band_id, send_date, message) values ('Pellentesque ultrices mattis odio.', 3, '06/29/2023', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into notifications (subject, band_id, send_date, message) values ('Duis consequat dui nec nisi volutpat eleifend.', 9, '02/09/2023', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 3, '03/22/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
insert into notifications (subject, band_id, send_date, message) values ('Proin eu mi.', 12, '10/01/2023', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into notifications (subject, band_id, send_date, message) values ('Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 8, '06/23/2023', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
insert into notifications (subject, band_id, send_date, message) values ('Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 14, '02/04/2023', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into notifications (subject, band_id, send_date, message) values ('Pellentesque at nulla.', 5, '08/17/2023', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
insert into notifications (subject, band_id, send_date, message) values ('Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 14, '05/08/2023', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into notifications (subject, band_id, send_date, message) values ('Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 3, '10/21/2023', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
insert into notifications (subject, band_id, send_date, message) values ('Donec ut dolor.', 9, '09/19/2023', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla ut erat id mauris vulputate elementum.', 13, '09/28/2023', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into notifications (subject, band_id, send_date, message) values ('Quisque id justo sit amet sapien dignissim vestibulum.', 5, '12/07/2023', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (subject, band_id, send_date, message) values ('In congue.', 4, '12/11/2022', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
insert into notifications (subject, band_id, send_date, message) values ('Integer tincidunt ante vel ipsum.', 1, '04/19/2023', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
insert into notifications (subject, band_id, send_date, message) values ('Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 9, '08/22/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (subject, band_id, send_date, message) values ('Sed accumsan felis.', 3, '08/02/2023', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (subject, band_id, send_date, message) values ('Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 4, '08/02/2023', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into notifications (subject, band_id, send_date, message) values ('Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 6, '04/16/2023', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.');
insert into notifications (subject, band_id, send_date, message) values ('Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 8, '02/11/2023', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
insert into notifications (subject, band_id, send_date, message) values ('Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 5, '02/18/2023', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
insert into notifications (subject, band_id, send_date, message) values ('Proin risus.', 12, '05/22/2023', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into notifications (subject, band_id, send_date, message) values ('Praesent blandit.', 10, '10/24/2023', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
insert into notifications (subject, band_id, send_date, message) values ('Aliquam non mauris.', 1, '02/06/2023', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
insert into notifications (subject, band_id, send_date, message) values ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 5, '09/26/2023', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi vel lectus in quam fringilla rhoncus.', 4, '03/07/2023', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.');
insert into notifications (subject, band_id, send_date, message) values ('Sed ante.', 9, '04/23/2023', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
insert into notifications (subject, band_id, send_date, message) values ('Ut tellus.', 1, '07/08/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into notifications (subject, band_id, send_date, message) values ('Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 14, '07/30/2023', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into notifications (subject, band_id, send_date, message) values ('Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 14, '05/26/2023', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla ac enim.', 1, '05/27/2023', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into notifications (subject, band_id, send_date, message) values ('Vestibulum sed magna at nunc commodo placerat.', 12, '07/08/2023', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into notifications (subject, band_id, send_date, message) values ('Nullam molestie nibh in lectus.', 7, '08/22/2023', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
insert into notifications (subject, band_id, send_date, message) values ('Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 8, '12/22/2022', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into notifications (subject, band_id, send_date, message) values ('Nulla ut erat id mauris vulputate elementum.', 2, '10/22/2023', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
insert into notifications (subject, band_id, send_date, message) values ('Curabitur gravida nisi at nibh.', 1, '04/28/2023', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into notifications (subject, band_id, send_date, message) values ('Morbi a ipsum.', 11, '09/17/2023', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
insert into notifications (subject, band_id, send_date, message) values ('Vivamus vel nulla eget eros elementum pellentesque.', 12, '01/14/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.
Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');


COMMIT TRANSACTION;
