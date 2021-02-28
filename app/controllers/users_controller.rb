class UsersController < ApplicationController
  
  
  get "/signup" do
    erb :"/users/signup"
  end

  post "/signup" do     
      erb :"/user/login"   
  end 
  
  get "/login" do
    erb :"/users/login"
  end

  post "/login" do 
    erb :"/user/index"
  end

  get '/users/:id' do 
    erb :"/users/index"
  end   

  get  "/logout" do
    session.clear
    redirect "/"
  end

end 
