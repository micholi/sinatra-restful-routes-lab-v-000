class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes/new' do
    erb :new
  end

  post '/recipes' do
    @recipe = Recipe.create(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
    redirect '/recipes/show'
  end

  get '/recipes' do
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
