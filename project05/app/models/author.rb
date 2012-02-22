class Author < ActiveRecord::Base
  validates :name, presence: true
  validate :no_author_named_pat
  
  has_attached_file :photo
  
  private
    
    def no_author_named_pat
      self.errors.add(:base, "Must not be named Pat because of evil CEO.") if self.name.downcase.include? 'pat'
    end
end
