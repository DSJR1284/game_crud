class Game < ActiveRecord::Base
  belongs_to :user 
  validates_presence_of :title, :blurb 
  validates_uniqueness_of :title
end
