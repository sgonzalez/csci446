class User < ActiveRecord::Base
  acts_as_authentic
  
  def name
    return first+" "+last
  end
end
