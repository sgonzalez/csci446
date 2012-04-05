class Game < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :title
  
  RATINGS = ["Amazing", "Good", "Meh.", "Horrible"]
  
  before_save :default_values
      
  def default_values
    self.user ||= UserSession.find.user
  end
end
