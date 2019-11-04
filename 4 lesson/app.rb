#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'yaml'
require_relative 'tamagotchi.rb'
$pets = Pets.new


get '/' do
	erb :index
end

post '/' do
	if params[:namegame]
		erb :change_pet
	elsif params[:continuegame]
		redirect :'/continuegame'
	end
end	

get '/change_pet' do
	erb :change_pet
end

post '/change_pet' do
	$name = params[:name_pets]
	$hp = 100; $hunger = 50; $power = 50; $mood = 50
	erb :game
end

post '/game' do
	game		
end

get '/continuegame' do
	savegame = YAML.load(File.read("data.yml"))
	$name 	= savegame[0]["name"]
	$hp 		= savegame[0]["health"]	
	$hunger = savegame[0]["hunger"]
	$power 	= savegame[0]["power"]
	$mood 	= savegame[0]["mood"]
	erb :game
end

post '/continuegame' do
	erb :game
end


def write_yaml
				config = [
				"name" => $name,
				"health" => $hp, 
				"hunger" => $hunger,
				"power" => $power,
				"mood" => $mood]
			File.open("data.yml", "w") { |file| file.write(config.to_yaml) }			
end

def game
		if params[:feed]
			$pets.feed
		elsif params[:play]
			$pets.play
		elsif params[:sleep]
			$pets.sleep
		elsif params[:walk]
			$pets.walk
		elsif params[:follow]
			$pets.follow
		elsif params[:wash]
			$pets.wash
		elsif params[:training]
			$pets.training
		elsif params[:fleas]
			$pets.fleas
		elsif params[:quit]
			write_yaml
			redirect :/
		end

		if $hp > 0	
			erb :game
		else		
			write_yaml
			erb :dead
		end	
end		