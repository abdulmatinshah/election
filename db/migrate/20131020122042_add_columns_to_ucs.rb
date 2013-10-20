class AddColumnsToUcs < ActiveRecord::Migration
  def change
    add_reference :ucs, :tehsil, index: true
    add_reference :ucs, :type, index: true
  end
end
