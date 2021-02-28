require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
     enable :sessions
     set :session_secret, ENV.fetch("SECRET")
  end 

  get "/" do
    erb :welcome
  end

  helpers do 

    def logged_in?
      !!session[:user_id]
    end
    
    def current_user 
      @current_user ||= User.find_by(session[:user_id])
      if logged_in?
      end 
    end 

    def redirect_if_not_logged_in
      if !logged_in?
        redirect '/'
      end 
    end 
  end 


end
