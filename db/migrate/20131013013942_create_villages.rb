class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :name
      t.integer :population
      t.references :uc, index: true

      t.timestamps
    end
  end
end
