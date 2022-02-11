require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
   @game = $game

    erb :play
  end

  get '/attack' do
    @turn = $game.turn
    $game.attack($game.player_2) if @turn == 1
    $game.attack($game.player_1) if @turn == 0
    erb :attack
  end


  run! if app_file == $0
end
