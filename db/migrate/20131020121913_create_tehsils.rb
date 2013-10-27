class CreateTehsils < ActiveRecord::Migration
  def change
    create_table :tehsils do |t|
      t.string :name

      t.timestamps
    end
  end
end
