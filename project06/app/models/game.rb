class Game < ActiveRecord::Base
  belongs_to :user
  
  RATINGS = ["Amazing", "Good", "Meh.", "Horrible"]
  
  # before_save :default_values
  #   
  #   def default_values
  #     self.user = current_user
  #   end
end
