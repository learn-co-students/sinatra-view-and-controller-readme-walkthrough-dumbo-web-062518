require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    puts params
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
@friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    # @friends = ["Peter, but only if you cheer up", "The bodega cat maybe.", "That one guy from the TV thing you like", "Idk, Phil or some shit?"]

    erb :friends

  end
end
