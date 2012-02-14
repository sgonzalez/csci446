class Article < ActiveRecord::Base
  validates :title, :author, :body, presence: true
  validates :author, exclusion: %w(Pat)
end
