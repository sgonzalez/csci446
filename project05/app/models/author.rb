class Author < ActiveRecord::Base
  validates :name, presence: true
  
  has_attached_file :photo
end
