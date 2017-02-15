DROP TABLE IF EXISTS pokemons           CASCADE;

create table pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  img_url VARCHAR(512),
  cp INTEGER,
  poke_type VARCHAR(255)
);