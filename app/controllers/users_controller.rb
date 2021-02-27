class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    erb :"/users/login"
  end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new"
  end

  post 'users/login' do 
    erb :"/users/login"
  end 

  # POST: /users
  post "/users" do
    redirect "/users/index"
  end

  # GET: /users/5
  get "/users/:id" do
    erb :"/users/show"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    session.clear
    redirect "/"
  end
  
end
