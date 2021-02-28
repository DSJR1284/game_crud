class UsersController < ApplicationController  
  
  get "/signup" do
    erb :"/users/signup"
  end

  post "/signup" do 
      user = User.new(params)
      if user.username == "" ||  user.password == "" || user.user_image == ""
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
      session[user_id] = user.id
      redirect " "
    else
      redirect '/login'
    end 
  end

  get '/users/:id' do 
    erb :"/users/"
  end   

  get  "/logout" do
    session.clear
    redirect "/"
  end

end 
