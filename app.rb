require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/sample_data'
require_relative 'db/seeds'
require_relative 'models/pokemon'
require_relative 'models/trainer'


get '/trainers' do
	@trainers = Trainer.all
	erb :"trainers/index"
end

post '/trainers' do
	@trainer = Trainer.create(params[:trainer])
	redirect "/trainers/#{@trainer.id}"
end

get '/trainers/new' do
	erb :"trainers/new"
end

get '/trainers/:id' do
	@trainer = Trainer.find(params[:id])
	erb :"trainers/show"
end

get '/trainers/:id/edit' do
	@trainer = Trainer.find(params[:id])
	erb :"trainers/edit"
end

put '/trainers/:id' do
	@trainer = Trainer.find(params[:id])
	@trainer.update(params[:trainer])
	redirect "/trainers/#{@trainer.id}"
end

delete "/trainers/:id" do
  @trainer = Trainer.find(params[:id])
  @trainer.destroy
  redirect "/trainers"
end

get '/pokemons' do
	@pokemons = Pokemon.all
	erb :"pokemons/index"
end

post '/pokemons' do
	@pokemon = Pokemon.create(params[:pokemon])
	redirect "/pokemons/#{@pokemon.id}"
end

get '/pokemons/new' do
	erb :"pokemons/new"
end

get '/pokemons/:id' do
	@pokemon = Pokemon.find(params[:id])
	@trainer = Trainer.find(@pokemon.trainer_id)
	erb :"pokemons/show"
end

get '/pokemons/:id/edit' do
	@pokemon = Pokemon.find(params[:id])
	erb :"pokemons/edit"
end

put '/pokemons/:id' do
	@pokemon = Pokemon.find(params[:id])
	@pokemon.update(params[:pokemon])
	redirect "/pokemons/#{@pokemon.id}"
end

delete "/pokemons/:id" do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect "/pokemons"
end