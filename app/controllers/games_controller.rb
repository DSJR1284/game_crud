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
    games = Game.create(title: params[:title], game_image: params[:game_image], blurb: params[:blurb], genre: params[:genre]  ,user_id: current_user.id)
    redirect "/games/#{games.id}"
  end

  # GET: /games/5
  get "/games/:id" do
    @games = Game.find_by_id(params[:id])
    erb :"/games/show"
  end

  # GET: /games/5/edit
  get "/games/:id/edit" do
    @games = Game.find_by_id(params[:id])
    erb :"/games/edit"
  end

  # PATCH: /games/5
  patch "/games/:id" do
    @games = Game.find_by_id(params[:id])
    @games.update(title: params[:title], game_image: params[:game_image], blurb: params[:blurb])
    redirect "/games/#{game.id}"
  end

  # DELETE: /games/5/delete
  delete "/games/:id/delete" do
    redirect "/games"
  end

end
