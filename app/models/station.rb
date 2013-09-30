class Station < ActiveRecord::Base
  belongs_to :uc
  
  has_many :votes
  has_many :candidates, through: :votes
end
