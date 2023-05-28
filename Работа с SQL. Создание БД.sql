CREATE TABLE IF NOT EXISTS Genre (
id serial PRIMARY KEY,
name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Executor (
id serial PRIMARY KEY,
name VARCHAR(60) NOT NULL
);


CREATE TABLE IF NOT EXISTS ExecutorGenre (
genre_id INTEGER REFERENCES Genre(id),
executor_id INTEGER REFERENCES Executor(id),
constraint pk primary key (genre_id, executor_id)
);

CREATE TABLE IF NOT EXISTS Album (
id serial PRIMARY KEY,
name VARCHAR(60) NOT NULL,
create_date date NOT NULL
);

CREATE TABLE IF NOT EXISTS AlbumExecutor (
album_id INTEGER REFERENCES Album(id),
executor_id INTEGER REFERENCES Executor(id),
constraint pk primary key (album_id, executor_id)
);


CREATE TABLE IF NOT EXISTS Song (
id serial PRIMARY KEY,
name VARCHAR(60) NOT NULL,
time_song INTEGER NOT NULL,
album_id INTEGER NOT NULL REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS SongsBook (
id serial PRIMARY KEY,
name VARCHAR(60) NOT NULL,
date INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS SongInSongsBook (
song_id INTEGER REFERENCES Song(id),
songsbook_id INTEGER REFERENCES SongsBook(id),
constraint pk primary key (song_id, songsbook_id)
);





