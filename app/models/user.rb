class User < ActiveRecord::Base
  has_many :games
  has_secure_password
  validates_uniqueness_of :username
  validates_presence_of :username, :password  
end
   
