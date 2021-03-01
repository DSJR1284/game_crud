class Game < ActiveRecord::Base
  belongs_to :user 
  validates_presence_of :title, :blurb , :genre, :game_image 
  validates_uniqueness_of :title
end
