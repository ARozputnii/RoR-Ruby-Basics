#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require_relative 'test.rb'

get '/' do
	erb :index
end

get '/game' do
	erb :game
	test = Test.new
	test.by
end