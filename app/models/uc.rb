class Uc < ActiveRecord::Base
  has_many :candidates
  has_many :stations
end
