class User < ActiveRecord::Base
  acts_as_authentic
  
  #belongs to role
  
  validates_presence_of :first, :last
  
  has_attached_file :photo
  
  def role_symbols
    #roles to sym
    [:member]
  end
  
  def name
    return first+" "+last
  end
end
