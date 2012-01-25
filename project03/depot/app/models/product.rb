class Product < ActiveRecord::Base
	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_rul, allow_blank: ture, format: {
		with: %{\.(gif|jpg|jpeg|png)$}i,
		message: 'must be a URL for a GIF, JPG, or PNG image.'
	}
end