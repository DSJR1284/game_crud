class UsersController < ApplicationController
  
  
  get "/signup" do
    erb :"/users/signup"
  end

  post "/signup" do 
    User.new(params)
    if params[:username] == "" || params[:password] == "" || params[:user_image] == ""
      flash[:error] = "Invalid Inputs Please Try Again"
      redirect "/"
    else
      user = User.save
      session[:user_id] = @user.id
      redirect "/login"
    end
  end 
  
  get "/login" do
      erb :"/users/login"
  end

  post "/login" do   
    @user = User.find_by_username(params[:username]) 
    if @user && user.authenticate(params[:password])
      session[:user_id] = @user.id
      
      redirect "/users/index"
    else 
      redirect "/login"
    end 
  end

  get  "/logout" do
    session.clear
    redirect "/"
  end
  
end
