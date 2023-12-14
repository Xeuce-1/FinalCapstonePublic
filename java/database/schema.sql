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
    description varchar(1000) NOT NULL,
    cover_image_url varchar(500) NOT NULL,
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
    image_url VARCHAR(1000) NOT NULL,

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
    subject VARCHAR(250) NOT NULL,
    band_id INT NOT NULL,
    send_date TIMESTAMP,
    message VARCHAR(1000) NOT NULL,

    CONSTRAINT PK_notifications PRIMARY KEY (notification_id),
    CONSTRAINT FK_notifications_bands FOREIGN KEY (band_id) REFERENCES bands (band_id)
    );

COMMIT TRANSACTION;
