class Candidate < ActiveRecord::Base
  belongs_to :uc
  belongs_to :position
  has_many :votes, dependent: :destroy
  has_many :stations, through: :votes

  accepts_nested_attributes_for :votes
 
# scope :position_wise, -> { group(:position_id)}
  # scope :order_by_votes, -> { joins(:votes).group('candidate_id')}
  
  # scope :tv, -> { joins(:votes).group_by($:position).sort_by { |k, v| raise k.inspect }}

 
  def total_votes
    self.votes.sum(:voters)
  end
 
  # def selt.tvs
  #  votes.sum(:voters)
  # end
end
