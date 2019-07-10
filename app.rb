require 'sinatra'
require_relative 'lib/player'

set :session_secret,"super secret"

class Battle < Sinatra::Base
	enable :sessions

	get '/' do
		erb(:index)
	end

	post '/names' do
		$player_1 = Player.new(params[:player_1_name])
		$player_2 = Player.new(params[:player_2_name])
		redirect '/play'
	end

	get '/play' do
		@player_1_name = $player_1.name
		@player_2_name = $player_2.name
		@player_1_hp = $player_1.health_points
		@player_2_hp = $player_2.health_points
		@attack = session[:attack]
		erb(:play)
	end

	get '/attack' do
		@player_1 = $player_1
		@player_2 = $player_2
		session[:attack] = true
		@player_1.attack(@player_2)
		redirect '/play'
	end

	# start the server if ruby file executed directly
	run! if app_file == $0
end
