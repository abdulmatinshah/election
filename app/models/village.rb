class Village < ActiveRecord::Base
  include Importer
  belongs_to :uc
end
