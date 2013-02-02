class Page < ActiveRecord::Base
  attr_accessible :description,:photo,:body
  has_attached_file :photo

  
  
end
