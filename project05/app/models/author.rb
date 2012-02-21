class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :author, exclusion: %w(Pat)
  
  has_attached_file :photo
end
