class Candidate < ActiveRecord::Base
  belongs_to :uc
  belongs_to :position
  has_many :votes, dependent: :destroy
  has_many :stations, through: :votes

  accepts_nested_attributes_for :votes
 
 
  def total_votes
    self.votes.sum(:voters)
  end
 
end
