class Article < ActiveRecord::Base
  validates :title, :body, presence: true
  validates :author, exclusion: %w(Pat)
  
  belongs_to :author
end
