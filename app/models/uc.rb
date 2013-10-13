class Uc < ActiveRecord::Base
  has_many :candidates
  has_many :stations
  has_many :villages
  
  accepts_nested_attributes_for :candidates
end
