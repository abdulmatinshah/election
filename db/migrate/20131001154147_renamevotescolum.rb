class Renamevotescolum < ActiveRecord::Migration
  def change
    rename_column :votes, :votes, :voters
  end
end
