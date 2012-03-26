class User < ActiveRecord::Base
  acts_as_authentic
  
  #belongs to role
  
  validates_presence_of :first, :last
  validates_length_of :username, :minimum => 6
  validates_length_of :password, :minimum => 6
  
  has_attached_file :photo
  
  def role_symbols
    #roles to sym
    [:member]
  end
  
  def name
    return first+" "+last
  end
end
