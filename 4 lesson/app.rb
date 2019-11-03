#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require_relative 'tamagotchi.rb'

get '/' do
	erb :index
end

get '/change_pet' do
	erb :change_pet
end
post '/change_pet' do
	@name_pets = params[:name_pets]

	erb :game
end
post '/game' do
		@pets = Pets.new
		
		if params[:feed]
			@pets.feed
		elsif params[:play]
			@pets.play
		elsif params[:sleep]
			@pets.sleep
		elsif params[:walk]
			@pets.walk
		elsif params[:follow]
			@pets.follow
		elsif params[:wash]
			@pets.wash
		elsif params[:training]
			@pets.training
		elsif params[:fleas]
			@pets.fleas
		elsif params[:quit]
			"Gameover"						
		end
		erb :game
end



