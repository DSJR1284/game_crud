class GamesController < ApplicationController

  # GET: /games
  get "/games" do
    @games = Game.all
    erb :"/games/index"
  end

  # GET: /games/new
  get "/games/new" do
    erb :"/games/new"
  end

  # POST: /games
  post "/games" do
    game = Game.create(title: params[:title], game_image: params[:game_image], blurb: params[:blurb], user_id: current_user.id)
    redirect "/games/#{game.id}"
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
