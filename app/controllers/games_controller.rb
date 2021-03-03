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
    game = Game.new(title: params[:title], game_image: params[:game_image], blurb: params[:blurb], genre: params[:genre]  ,user_id: current_user.id)
    if game.save 
    redirect "/games/#{games.id}"
    else 
      flash[:error] = "Load Error Reinsert Game Data." 
      redirect "/games/new"
    end 
  end

  # GET: /games/5
  get "/games/:id" do
    @games = Game.find_by_id(params[:id])
    erb :"/games/show"
  end

  # GET: /games/5/edit
  get "/games/:id/edit" do
    @games = Game.find_by_id(params[:id])
    if @games.user == current_user
    erb :"/games/edit"
    end 
  end

  # PATCH: /games/5
  patch "/games/:id" do
    @games = Game.find_by_id(params[:id])
    @games.update(title: params[:title], game_image: params[:game_image], genre: params[:genre], blurb: params[:blurb])
    redirect "/games/#{@games.id}"
  end

  # DELETE: /games/5/delete
  delete "/games/:id/delete" do
    @games = Game.find_by_id(params[:id])
    @games.destroy
    redirect "/games"
  end

end
