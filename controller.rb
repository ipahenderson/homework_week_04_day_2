require 'sinatra'
require 'sinatra/reloader'
require_relative 'models/game'

get '/game' do
  erb(:game)
end

get '/' do
  erb(:home)
end

get '/game/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  game = Game.new(hand1, hand2)
  @result = game.compare
  erb(:result)
end
