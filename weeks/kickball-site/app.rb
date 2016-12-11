require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get '/teams' do
  @teams = TeamData::ROLL_CALL
  erb :index
end

get '/teams/:team' do
  @players = TeamData::ROLL_CALL[params[:team].to_sym]
  erb :show
end
