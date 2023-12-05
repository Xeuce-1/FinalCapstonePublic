BEGIN TRANSACTION;
DROP TABLE IF EXISTS bands;
DROP TABLE IF EXISTS users;

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
    cover_image_url varchar(100) NOT NULL,
    CONSTRAINT PK_band PRIMARY KEY (band_id),
    CONSTRAINT FK_bands_users FOREIGN KEY (manager_id) REFERENCES users (user_id)


);

COMMIT TRANSACTION;
