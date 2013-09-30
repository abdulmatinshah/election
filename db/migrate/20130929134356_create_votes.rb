class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :candidate
      t.references :station, index: true
      t.integer :votes

      t.timestamps
    end
  end
end
