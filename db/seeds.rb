require 'active_record'
# require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'

Pokemon.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg", trainer_id: 1)
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg", trainer_id: 1)
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg", trainer_id: 1)
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg", trainer_id: 2)
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg", trainer_id: 2)
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg", trainer_id: 2)
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg", trainer_id: 3)
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg", trainer_id: 3)

Trainer.destroy_all
Trainer.create(name: "Gary", level: rand(100), img_url: "http://cdn.bulbagarden.net/upload/7/7b/Gary_badges.png")
Trainer.create(name: "Red", level: rand(100), img_url: "https://s-media-cache-ak0.pinimg.com/236x/6e/e9/01/6ee9013cf67d650c1102f9ba5b963d9f.jpg")
Trainer.create(name: "Peter", level: rand(100), img_url: "http://i.imgur.com/bB1QsNr.jpg")
