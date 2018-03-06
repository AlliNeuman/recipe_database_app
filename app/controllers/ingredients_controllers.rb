class IngredientsController < ApplicationController

  get '/ingredients' do
    if logged_in?
      @ingredients = Ingredient.all

      erb :'ingredients/index'
    else
      redirect to '/login'
    end
  end

  get '/ingredients/new' do
    if logged_in?
      erb :'ingredients/new'
    else
      redirect to '/login'
    end
  end

  get '/ingredients/:id' do
    if logged_in?
      @ingredient = Ingredient.find(params[:id])
      erb :'ingredients/show'
    else
      redirect to '/login'
    end
  end

  get '/ingredients/:id/edit' do
    if logged_in?
      @ingredient = Ingredient.find(params[:id])
      if @ingredient && @ingredient.user == current_user
        erb :'ingredients/edit'
      else
        redirect to "/ingredients/#{@ingredient.id}"
      end
    else
      redirect to '/login'
    end
  end

  post '/ingredients' do
    if logged_in?

    else
      redirect to '/login'
    end
  end

  patch '/recipe/:id' do

  end

  delete '/recipe/:id' do

  end

end
