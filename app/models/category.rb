class Category < ActiveRecord::Base
	has_many :post_and_categories
	has_many :posts, through: :post_and_categories
end