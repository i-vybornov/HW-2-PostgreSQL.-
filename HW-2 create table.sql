create table if not exists style
(
	id serial primary key,
	name varchar(100) not null
);
 create table if not exists artists
(
	id serial primary key,
	name varchar(100) not null,
	id_genre integer references style(id)
);
 create table if not exists album
(
	id serial primary key,
	id_artist integer references artists(id),
	name varchar(100) not null,
	year integer not null
);
 create table if not exists song
(
	id serial primary key,
	name varchar(100) not null,
	duration time not null,
	id_album integer references album(id)
)