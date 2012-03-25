class User < ActiveRecord::Base
  acts_as_authentic
  
  validates_presence_of :first, :last
  
  has_attached_file :photo
  
  def name
    return first+" "+last
  end
end
