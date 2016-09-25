class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :user
	has_many :post_and_categories
	has_many :categories, through: :post_and_categories
	has_many :votes, as: :voteable
	
	def up_votes
  votes.where(vote: true).length
  end

  def down_votes
    votes.where(vote: false).length
  end

  def total_votes
    up_votes - down_votes
  end
end