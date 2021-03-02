class UsersController < ApplicationController  
  
  get "/signup" do
    erb :"/users/signup"
  end

  post "/signup" do 
      user = User.new(params)
      if user.username == "" ||  user.password == "" || user.user_image == ""
        flash[:error] = "Invalid Inputs Please Try Again."
        redirect "/signup"
      else 
        user.save
        session[:user_id] = user.id
        redirect "/login" 
      end   
  end 
  
  get "/login" do
    erb :"/users/login"
  end

  post "/login" do
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/users/#{user.id}"
    else
      flash[:msg] = "Invlaid Crenditals Please Try Again"
      redirect "/login"
    end 
  end

  get '/users/:id' do 
    if logged_in?
     user = User.find_by_id(params[:id])      
       redirect "/games "
    else
      redirect '/'
    end 
  end   

  get  "/logout" do
    session[:user_id] !=nil
    session.clear
    redirect "/"
  end

end 
