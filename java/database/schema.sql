BEGIN TRANSACTION;
DROP TABLE IF EXISTS notifications;
DROP TABLE IF EXISTS follower;
DROP TABLE IF EXISTS bands;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS gallery;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS band_genres;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE bands (
    band_id SERIAL,
    manager_id INT NOT NULL,
    bandname varchar(100) NOT NULL UNIQUE,
    description varchar(300) NOT NULL UNIQUE,
    cover_image_url varchar(250),
    CONSTRAINT PK_band PRIMARY KEY (band_id),
    CONSTRAINT FK_bands_users FOREIGN KEY (manager_id) REFERENCES users (user_id)
);

CREATE TABLE follower (
    follower_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    band_id INT NOT NULL,
    CONSTRAINT FK_follower_users FOREIGN KEY (user_id) REFERENCES users (user_id),
    CONSTRAINT FK_follower_bands FOREIGN KEY (band_id) REFERENCES bands (band_id)
);

CREATE TABLE gallery (
    gallery_id SERIAL,
    band_id INT NOT NULL,
    image_url VARCHAR(250),

    CONSTRAINT PK_gallery PRIMARY KEY (gallery_id),
    CONSTRAINT FK_gallery_bands FOREIGN KEY (band_id) REFERENCES bands (band_id)
);

CREATE TABLE genres (
    genre_id SERIAL,
    genre_name VARCHAR(50) NOT NULL UNIQUE,

    CONSTRAINT PK_genre PRIMARY KEY (genre_id)
);

CREATE TABLE band_genres (
    id SERIAL,
    band_id INT NOT NULL,
    genre_id INT NOT NULL,

    CONSTRAINT PK_bg PRIMARY KEY (id),
    CONSTRAINT FK_bands_band_genres FOREIGN KEY (band_id) REFERENCES bands (band_id),
    CONSTRAINT FK_genres_band_genres FOREIGN KEY (genre_id) REFERENCES genres (genre_id)
);

-- NOTIFICATION TABLE.
CREATE TABLE notifications (
    notification_id SERIAL,
    subject VARCHAR(64) NOT NULL,
    band_id INT NOT NULL,
    send_date DATE NOT NULL,
    message VARCHAR(1000) NOT NULL,

    CONSTRAINT PK_notifications PRIMARY KEY (notification_id),
    CONSTRAINT FK_notifications_bands FOREIGN KEY (band_id) REFERENCES bands (band_id)
    );


--CREATE TABLE user_notifications (
--    id SERIAL,
--    user_id INT,
--    band_it INT,
--    notification_id INT
--)

insert into users ( username, password_hash, role) values ( 'yberg0', '$2a$04$7wVNsStaXZKMDWyp5RKs6O32dOIZnv6rGyrJq/wkmqyE090EAStD6', 'morbi');
insert into users ( username, password_hash, role) values ( 'esisey1', '$2a$04$ML8G9zIDLVwAvNXdjh6xJOwf0CE2FCKh8Pjh0SqTMHNc0475kKGke', 'venenatis tristique');
insert into users (username, password_hash, role) values ( 'bcritchell2', '$2a$04$Xd0Fz3b25tR/xYDmGEwDzunjgikfcRyP8bDqMpEmuYb8p77TyP4d6', 'duis');
insert into users (username, password_hash, role) values ( 'atritton3', '$2a$04$.b2PlUlMEiKLYW7PRJ9PwOFtvInHdVxqf66Giiee8aeJqi4rE3dLm', 'varius nulla');
insert into users ( username, password_hash, role) values ( 'jedmeades4', '$2a$04$kee7LpMNECsa3rwBpd09ZeNNrMm/Kw07Cv106HHmHffKrJzPxcjdW', 'in hac');
insert into users ( username, password_hash, role) values ( 'hcanizares5', '$2a$04$cHCn7cYNofCq8l2g8OS/MOlcMwPSxXWFmatShmjhO0w3o1EDcmPcu', 'non');
insert into users ( username, password_hash, role) values ( 'rnono6', '$2a$04$AkV40mQbcjgLrq/E2Ox0uOs/6XGnf/QqOJ2YURmUthQ7LsD8Qdfli', 'in sagittis');
insert into users ( username, password_hash, role) values ( 'dsrawley7', '$2a$04$Cl8xRsBi67hTd5ifZp2qDOlqXZC6CxYMumN8wZtjklN47exftQfIO', 'vitae');
insert into users (username, password_hash, role) values ( 'oascough8', '$2a$04$YpwRur3PA79ish08.dJEV.uXDufhk3mCbZZfk6CmLGTvDIY8PSLQu', 'quisque id');
insert into users ( username, password_hash, role) values ( 'crillett9', '$2a$04$OKY.6W12gbGanJfzh1O1euG.Onz1mgMDVLF1hn/gu5QjqXBkNnKZ2', 'non');


insert into bands ( manager_id, bandname, description, cover_image_url) values ( 3, 'at dolor', 'sed justo', 'http://dummyimage.com/105x100.png/ff4444/ffffff');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 4, 'ridiculus mus etiam', 'ipsum aliquam', 'http://dummyimage.com/109x100.png/cc0000/ffffff');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 6, 'velit donec diam', 'elit', 'http://dummyimage.com/143x100.png/cc0000/ffffff');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 8, 'dolor', 'praesent', 'http://dummyimage.com/173x100.png/cc0000/ffffff');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 9, 'metus aenean fermentum', 'in consequat ut nulla sed accumsan felis ut at', 'http://dummyimage.com/213x100.png/ff4444/ffffff');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 5, 'congue', 'etiam vel augue vestibulum rutrum', 'http://dummyimage.com/193x100.png/ff4444/ffffff');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 1, 'luctus et', 'rutrum ac lobortis vel dapibus at diam nam tristique', 'http://dummyimage.com/232x100.png/5fa2dd/ffffff');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 7, 'sapien', 'laoreet ut rhoncus aliquet pulvinar', 'http://dummyimage.com/180x100.png/dddddd/000000');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 10, 'eget', 'tellus nulla ut erat', 'http://dummyimage.com/110x100.png/5fa2dd/ffffff');
insert into bands ( manager_id, bandname, description, cover_image_url) values ( 2, 'sed accumsan', 'ut blandit non interdum in ante vestibulum ante ipsum', 'http://dummyimage.com/212x100.png/5fa2dd/ffffff');

COMMIT TRANSACTION;
