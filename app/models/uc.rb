class Uc < ActiveRecord::Base
  has_many :candidates
  has_many :stations
  
  accepts_nested_attributes_for :candidates
end
