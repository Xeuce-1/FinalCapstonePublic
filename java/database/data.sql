BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



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



-- NOTIFICATIONS TABLE
insert into notifications (notification_id, subject, band_id, send_date, message) values (1, 'Sed vel enim sit amet nunc viverra dapibus.', 12, '01/14/2023', 'In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (2, 'Aenean fermentum.', 10, '04/23/2023', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (3, 'Proin interdum mauris non ligula pellentesque ultrices.', 10, '01/10/2023', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (4, 'Nam nulla.', 7, '01/09/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (5, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 12, '10/23/2023', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (6, 'Etiam faucibus cursus urna.', 9, '07/03/2023', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (7, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 10, '03/25/2023', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (8, 'Vivamus tortor.', 5, '07/20/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (9, 'Praesent blandit.', 10, '02/06/2023', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (10, 'Nullam varius.', 4, '12/17/2022', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (11, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 6, '01/05/2023', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (12, 'Cras non velit nec nisi vulputate nonummy.', 10, '08/07/2023', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (13, 'Nunc rhoncus dui vel sem.', 14, '10/06/2023', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (14, 'Nunc nisl.', 13, '01/11/2023', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (15, 'In hac habitasse platea dictumst.', 13, '10/08/2023', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (16, 'Morbi quis tortor id nulla ultrices aliquet.', 8, '03/15/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (17, 'Sed vel enim sit amet nunc viverra dapibus.', 11, '05/02/2023', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (18, 'Suspendisse potenti.', 10, '06/27/2023', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (19, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 9, '07/21/2023', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (20, 'Ut at dolor quis odio consequat varius.', 14, '06/20/2023', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (21, 'Suspendisse accumsan tortor quis turpis.', 7, '11/30/2023', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (22, 'Ut tellus.', 3, '12/30/2022', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (23, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 1, '09/22/2023', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (24, 'Quisque porta volutpat erat.', 11, '09/18/2023', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (25, 'Praesent id massa id nisl venenatis lacinia.', 7, '02/11/2023', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (26, 'Suspendisse potenti.', 11, '07/24/2023', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (27, 'Nulla ac enim.', 9, '01/30/2023', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (28, 'Etiam justo.', 12, '10/24/2023', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (29, 'In hac habitasse platea dictumst.', 7, '06/08/2023', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (30, 'Nam tristique tortor eu pede.', 2, '03/04/2023', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (31, 'Pellentesque ultrices mattis odio.', 5, '04/27/2023', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (32, 'Nulla nisl.', 13, '10/02/2023', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (33, 'Curabitur at ipsum ac tellus semper interdum.', 1, '02/18/2023', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (34, 'Duis ac nibh.', 11, '02/20/2023', 'Fusce consequat. Nulla nisl. Nunc nisl.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (35, 'Aenean sit amet justo.', 9, '03/20/2023', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (36, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 10, '08/20/2023', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (37, 'In quis justo.', 3, '10/13/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (38, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 11, '04/15/2023', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (39, 'Curabitur in libero ut massa volutpat convallis.', 6, '03/31/2023', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (40, 'Morbi quis tortor id nulla ultrices aliquet.', 11, '04/19/2023', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (41, 'In hac habitasse platea dictumst.', 10, '01/26/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (42, 'Duis ac nibh.', 9, '02/28/2023', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (43, 'Nullam sit amet turpis elementum ligula vehicula consequat.', 7, '04/28/2023', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (44, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 4, '06/29/2023', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (45, 'In eleifend quam a odio.', 11, '03/05/2023', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (46, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 6, '08/16/2023', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (47, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 9, '12/28/2022', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (48, 'Vivamus tortor.', 8, '05/21/2023', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (49, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 12, '02/22/2023', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (50, 'Nunc nisl.', 11, '11/19/2023', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (51, 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 2, '05/06/2023', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (52, 'Morbi vel lectus in quam fringilla rhoncus.', 3, '05/08/2023', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (53, 'Aliquam non mauris.', 2, '06/15/2023', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (54, 'Pellentesque eget nunc.', 13, '06/27/2023', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (55, 'Nunc rhoncus dui vel sem.', 5, '10/15/2023', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (56, 'Nulla ac enim.', 3, '10/17/2023', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (57, 'Maecenas rhoncus aliquam lacus.', 4, '03/28/2023', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (58, 'Morbi non lectus.', 13, '02/12/2023', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (59, 'Vivamus vestibulum sagittis sapien.', 9, '05/24/2023', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (60, 'Quisque porta volutpat erat.', 11, '01/19/2023', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (61, 'Sed vel enim sit amet nunc viverra dapibus.', 2, '10/16/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (62, 'Aliquam quis turpis eget elit sodales scelerisque.', 9, '12/31/2022', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (63, 'Aliquam quis turpis eget elit sodales scelerisque.', 11, '01/25/2023', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (64, 'Maecenas ut massa quis augue luctus tincidunt.', 8, '08/23/2023', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (65, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1, '06/01/2023', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (66, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 8, '02/17/2023', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (67, 'In hac habitasse platea dictumst.', 7, '09/12/2023', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (68, 'Maecenas pulvinar lobortis est.', 6, '04/03/2023', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (69, 'Donec dapibus.', 6, '09/15/2023', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (70, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 14, '03/16/2023', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (71, 'Nunc nisl.', 3, '09/01/2023', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (72, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 6, '06/16/2023', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (73, 'Sed accumsan felis.', 3, '03/05/2023', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (74, 'Proin eu mi.', 11, '09/10/2023', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (75, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 4, '03/26/2023', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (76, 'Duis mattis egestas metus.', 1, '01/21/2023', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (77, 'Nullam porttitor lacus at turpis.', 2, '08/24/2023', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (78, 'Phasellus sit amet erat.', 10, '04/02/2023', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (79, 'In quis justo.', 5, '02/05/2023', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (80, 'Aenean auctor gravida sem.', 1, '03/24/2023', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (81, 'Vivamus vestibulum sagittis sapien.', 3, '01/08/2023', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (82, 'Etiam faucibus cursus urna.', 9, '10/24/2023', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (83, 'Aliquam quis turpis eget elit sodales scelerisque.', 5, '09/29/2023', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (84, 'Vestibulum rutrum rutrum neque.', 14, '07/05/2023', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (85, 'Suspendisse potenti.', 7, '10/22/2023', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (86, 'Maecenas pulvinar lobortis est.', 12, '12/29/2022', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (87, 'Maecenas ut massa quis augue luctus tincidunt.', 11, '08/31/2023', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (88, 'Sed ante.', 3, '02/25/2023', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (89, 'Vivamus vel nulla eget eros elementum pellentesque.', 6, '06/10/2023', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (90, 'Quisque id justo sit amet sapien dignissim vestibulum.', 2, '10/12/2023', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (91, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 9, '02/15/2023', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (92, 'Nam nulla.', 8, '10/05/2023', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (93, 'Morbi vel lectus in quam fringilla rhoncus.', 2, '10/17/2023', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (94, 'Aliquam non mauris.', 6, '11/27/2023', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (95, 'Morbi non quam nec dui luctus rutrum.', 9, '12/26/2022', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (96, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 13, '10/25/2023', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (97, 'Suspendisse ornare consequat lectus.', 7, '04/01/2023', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (98, 'Curabitur in libero ut massa volutpat convallis.', 1, '04/12/2023', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (99, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 10, '09/10/2023', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (100, 'Nulla tempus.', 9, '02/08/2023', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (101, 'Nullam porttitor lacus at turpis.', 11, '11/06/2023', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (102, 'Morbi vel lectus in quam fringilla rhoncus.', 11, '05/23/2023', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (103, 'Integer ac neque.', 1, '05/12/2023', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (104, 'Praesent lectus.', 5, '12/20/2022', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (105, 'Suspendisse potenti.', 11, '07/01/2023', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (106, 'Nullam porttitor lacus at turpis.', 10, '09/14/2023', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (107, 'Praesent lectus.', 13, '09/23/2023', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (108, 'Cras in purus eu magna vulputate luctus.', 9, '11/19/2023', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (109, 'Duis consequat dui nec nisi volutpat eleifend.', 5, '04/21/2023', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (110, 'Phasellus in felis.', 7, '04/19/2023', 'Fusce consequat. Nulla nisl. Nunc nisl.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (111, 'In blandit ultrices enim.', 13, '08/09/2023', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (112, 'Duis aliquam convallis nunc.', 10, '09/02/2023', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (113, 'Aliquam sit amet diam in magna bibendum imperdiet.', 8, '02/21/2023', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (114, 'Etiam justo.', 10, '06/28/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (115, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 3, '02/13/2023', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (116, 'Quisque ut erat.', 8, '07/08/2023', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (117, 'Integer ac neque.', 14, '09/12/2023', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (118, 'In blandit ultrices enim.', 9, '10/05/2023', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (119, 'Suspendisse potenti.', 12, '07/04/2023', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (120, 'Vivamus vestibulum sagittis sapien.', 4, '10/23/2023', 'Fusce consequat. Nulla nisl. Nunc nisl.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (121, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 10, '12/07/2023', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (122, 'Nam dui.', 6, '09/22/2023', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (123, 'Morbi vel lectus in quam fringilla rhoncus.', 3, '12/12/2022', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (124, 'Pellentesque ultrices mattis odio.', 14, '02/14/2023', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (125, 'In sagittis dui vel nisl.', 12, '11/19/2023', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (126, 'Integer ac neque.', 3, '11/05/2023', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (127, 'Vestibulum ac est lacinia nisi venenatis tristique.', 9, '12/03/2023', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (128, 'Aenean fermentum.', 11, '01/27/2023', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (129, 'Nulla justo.', 1, '07/17/2023', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (130, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 9, '02/11/2023', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (131, 'Maecenas pulvinar lobortis est.', 6, '11/19/2023', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (132, 'Sed accumsan felis.', 7, '08/08/2023', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (133, 'Integer ac leo.', 13, '06/19/2023', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (134, 'Praesent blandit.', 3, '05/09/2023', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (135, 'Mauris ullamcorper purus sit amet nulla.', 5, '06/27/2023', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (136, 'Nunc rhoncus dui vel sem.', 2, '09/21/2023', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (137, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 1, '09/19/2023', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (138, 'Etiam justo.', 4, '07/11/2023', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (139, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 10, '06/06/2023', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (140, 'Vestibulum rutrum rutrum neque.', 1, '01/27/2023', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (141, 'Etiam faucibus cursus urna.', 5, '08/12/2023', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (142, 'Nunc nisl.', 8, '04/30/2023', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (143, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 2, '06/07/2023', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (144, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 6, '10/23/2023', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (145, 'Suspendisse accumsan tortor quis turpis.', 5, '08/02/2023', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (146, 'Nullam varius.', 4, '09/11/2023', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (147, 'Donec semper sapien a libero.', 2, '10/02/2023', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (148, 'Nulla ac enim.', 7, '11/16/2023', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (149, 'Phasellus id sapien in sapien iaculis congue.', 3, '08/24/2023', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (150, 'Etiam vel augue.', 5, '09/05/2023', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (151, 'Nulla tempus.', 2, '09/20/2023', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (152, 'Nulla ut erat id mauris vulputate elementum.', 4, '02/25/2023', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (153, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 14, '01/05/2023', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (154, 'Quisque id justo sit amet sapien dignissim vestibulum.', 7, '10/04/2023', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (155, 'Fusce consequat.', 1, '05/18/2023', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (156, 'Phasellus id sapien in sapien iaculis congue.', 9, '09/30/2023', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (157, 'Proin risus.', 3, '12/28/2022', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (158, 'Nulla tellus.', 7, '04/02/2023', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (159, 'Nulla nisl.', 3, '11/20/2023', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (160, 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 2, '07/04/2023', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (161, 'Curabitur in libero ut massa volutpat convallis.', 12, '10/15/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (162, 'Vestibulum rutrum rutrum neque.', 5, '10/31/2023', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (163, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 5, '10/13/2023', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (164, 'Nulla ut erat id mauris vulputate elementum.', 8, '07/01/2023', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (165, 'Vivamus vestibulum sagittis sapien.', 7, '04/11/2023', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (166, 'In sagittis dui vel nisl.', 9, '01/03/2023', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (167, 'In congue.', 3, '05/12/2023', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (168, 'Pellentesque at nulla.', 12, '05/31/2023', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (169, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 10, '02/23/2023', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (170, 'Donec posuere metus vitae ipsum.', 9, '01/08/2023', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (171, 'In congue.', 5, '02/16/2023', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (172, 'Nulla suscipit ligula in lacus.', 1, '10/20/2023', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (173, 'Praesent blandit lacinia erat.', 5, '09/21/2023', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (174, 'Nam tristique tortor eu pede.', 5, '04/10/2023', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (175, 'Proin risus.', 12, '01/14/2023', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (176, 'Morbi non quam nec dui luctus rutrum.', 13, '01/27/2023', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (177, 'Suspendisse ornare consequat lectus.', 8, '11/29/2023', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (178, 'Vivamus vel nulla eget eros elementum pellentesque.', 7, '03/18/2023', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (179, 'Suspendisse potenti.', 6, '03/03/2023', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (180, 'Etiam vel augue.', 9, '02/20/2023', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (181, 'Nullam molestie nibh in lectus.', 12, '10/16/2023', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (182, 'Nam nulla.', 2, '11/02/2023', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (183, 'Proin interdum mauris non ligula pellentesque ultrices.', 10, '01/29/2023', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (184, 'In congue.', 6, '03/27/2023', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (185, 'Aliquam quis turpis eget elit sodales scelerisque.', 5, '07/06/2023', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (186, 'Sed vel enim sit amet nunc viverra dapibus.', 1, '02/12/2023', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (187, 'Maecenas ut massa quis augue luctus tincidunt.', 2, '10/31/2023', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (188, 'Proin risus.', 3, '11/13/2023', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (189, 'Morbi a ipsum.', 4, '10/31/2023', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (190, 'Nam tristique tortor eu pede.', 12, '11/25/2023', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (191, 'Morbi non lectus.', 1, '06/04/2023', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (192, 'Nam tristique tortor eu pede.', 14, '04/24/2023', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (193, 'In blandit ultrices enim.', 11, '03/29/2023', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (194, 'In hac habitasse platea dictumst.', 10, '08/02/2023', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (195, 'Maecenas pulvinar lobortis est.', 2, '11/04/2023', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (196, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 4, '09/09/2023', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (197, 'Aenean lectus.', 12, '04/24/2023', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (198, 'Fusce posuere felis sed lacus.', 6, '06/18/2023', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (199, 'Phasellus id sapien in sapien iaculis congue.', 12, '07/23/2023', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
insert into notifications (notification_id, subject, band_id, send_date, message) values (200, 'Sed sagittis.', 8, '12/26/2022', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');

INSERT INTO notifications(notification_id, subject, band_id, send_date, message)
VALUES
	(201, 'Brace yourselves, the quiet is over!', 12, NOW(), 'Hey Mouseketeers! We''re thrilled to announce that new music is on the horizon!  Expect fresh sounds, unexpected twists, and the classic Modest Mouse energy you know and love. Stay tuned for more details soon!')
	,(202, 'Get your dancing shoes ready!', 12, NOW(), 'We''re hitting the road again, and this time we''re bringing the party to your town!  Get ready for a night of unforgettable music, singalongs, and good vibes.  Tickets go on sale on [Date]! Don''t miss out!');





COMMIT TRANSACTION;
