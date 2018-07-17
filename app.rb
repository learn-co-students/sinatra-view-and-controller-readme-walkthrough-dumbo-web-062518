require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    user_input = params[:string]
    @reversed = user_input.reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison',
      'Harriet Tubman',
      'Joan of Arc',
      'Malala Yousafzai',
      'Sojourner Truth']
      erb :friends
  end
end
