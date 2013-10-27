class Village < ActiveRecord::Base
  include Importer
  belongs_to :uc

  validates :name, presence: true
end
