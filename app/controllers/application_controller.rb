class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/recipes/new' do

  end

  post '/recipes' do
    @recipes = Recipe.all
  end

  get '/recipes/:id/edit' do

  end

  patch '/recipes/:id' do

  end

#  get '/' do

#  end

  delete '/recipes/:id/delete' do

  end

end
