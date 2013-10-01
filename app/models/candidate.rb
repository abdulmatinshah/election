class Candidate < ActiveRecord::Base
  belongs_to :uc
  has_many :votes, dependent: :destroy
  has_many :stations, through: :votes

  accepts_nested_attributes_for :votes

end
