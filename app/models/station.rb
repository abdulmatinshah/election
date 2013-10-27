class Station < ActiveRecord::Base
  belongs_to :uc
  
  has_many :votes
  has_many :candidates, through: :votes

  accepts_nested_attributes_for :votes
end
