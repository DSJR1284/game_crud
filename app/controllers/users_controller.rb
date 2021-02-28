class UsersController < ApplicationController
  
  
  get "/signup" do
    erb :"/users/signup"
  end

  post "/signup" do 
   
  end 
  
  get "/login" do
      erb :"/users/login"
  end

  post "/login" do   
  
  end

  
  get "user/:id" do 
  
  end 

  get  "/logout" do
    session.clear
    redirect "/"
  end
  
end
