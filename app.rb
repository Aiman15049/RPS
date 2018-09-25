require 'sinatra/base'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb :play
  end

  post '/play' do
    session[:opponent_shape] = Opponent.new.shape 
    session[:player_shape] = params[:player_shape]
    redirect '/play'
  end


  run! if app_file == $0

end
