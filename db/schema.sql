DROP TABLE IF EXISTS pokemons           CASCADE;
DROP TABLE IF EXISTS trainers           CASCADE;

create table pokemons (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	img_url VARCHAR(512),
	cp INTEGER,
	poke_type VARCHAR(255),
	trainer_id INTEGER
);

create table trainers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	level INTEGER,
	img_url VARCHAR(512)
);