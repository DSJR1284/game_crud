class GamesController < ApplicationController

  # GET: /games
  get "/games" do
    erb :"/games/index"
  end

  # GET: /games/new
  get "/games/new" do
    erb :"/games/new"
  end

  # POST: /games
  post "/games" do
    redirect "/games"
  end

  # GET: /games/5
  get "/games/:id" do
    erb :"/games/show"
  end

  # GET: /games/5/edit
  get "/games/:id/edit" do
    erb :"/games/edit"
  end

  # PATCH: /games/5
  patch "/games/:id" do
    redirect "/games/:id"
  end

  # DELETE: /games/5/delete
  delete "/games/:id/delete" do
    redirect "/games"
  end
end
