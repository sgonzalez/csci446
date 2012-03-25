class User < ActiveRecord::Base
  acts_as_authentic
  
  validates_presence_of :first, :last
  
  def name
    return first+" "+last
  end
end
