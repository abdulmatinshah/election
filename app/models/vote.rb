class Vote < ActiveRecord::Base
  belongs_to :station
  belongs_to :candidate
end
