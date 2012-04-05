class User < ActiveRecord::Base
  acts_as_authentic do |config|
    config.merge_validates_length_of_password_field_options :minimum => 6
    # config.merge_validates_length_of_login_field_options :minimum => 6
  end
  
  belongs_to :role
  has_many :games
  
  before_save :default_values
  
  validates_presence_of :first, :last
  validates_length_of :username, :minimum => 6
  
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
