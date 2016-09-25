class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :user
	validates :content, presence: true, length: {minimum: 5}
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
