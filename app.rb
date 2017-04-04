# App
#   POST /reverse
#     responds with a 200
#     displays the reversed string (FAILED - 1)
#   GET /friends
#     responds with a 200
#     displays friends in the view (FAILED - 2)
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    @string = params[:string].reverse!
    erb :reversed
  end

  get '/friends' do
    #write your code here
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

end
