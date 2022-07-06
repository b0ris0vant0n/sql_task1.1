CREATE TABLE IF NOT EXISTS genre(
genre_id SERIAL PRIMARY KEY,
name VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS singer(
singer_id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT EXISTS singer_genre(
singer_id int REFERENCES singer(singer_id),
genre_id int REFERENCES genre(genre_id)
);

CREATE TABLE IF NOT EXISTS album(
album_id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL,
release_year int NOT NULL
);

CREATE TABLE IF NOT EXISTS album_singer(
singer_id int REFERENCES singer(singer_id),
album_id int REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS track(
track_id SERIAL PRIMARY KEY,
name varchar(80) NOT NULL,
album_id int REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS collections(
collections_id SERIAL PRIMARY KEY,
release_year int NOT NULL,
name varchar(60) NOT NULL,
album_id int REFERENCES album(album_id),
track_id int REFERENCES track(track_id)
);

