class User < ActiveRecord::Base
  acts_as_authentic
  # acts_as_authentic do |config|
  #   config.min_pas
  # end
  
  belongs_to :role
  
  before_save :default_values
  
  validates_presence_of :first, :last
  validates_length_of :username, :minimum => 6
  validates_length_of :password, :minimum => 6
  
  has_attached_file :photo
  
  def default_values
    self.role ||= Role.find_or_create_by_name("member")
  end
  
  def role_symbols
    [role.name.downcase.to_sym]
  end
  
  def name
    return first+" "+last
  end
end
