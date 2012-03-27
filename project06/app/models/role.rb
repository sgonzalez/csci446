class Role < ActiveRecord::Base
  
  has_many :comments
  
end
