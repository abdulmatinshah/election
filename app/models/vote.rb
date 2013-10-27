class Vote < ActiveRecord::Base
  belongs_to :station
  belongs_to :candidate

  def self.total
    sum(:voters)
  end
end
