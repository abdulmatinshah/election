class CreateUcs < ActiveRecord::Migration
  def change
    create_table :ucs do |t|
      t.string :name

      t.timestamps
    end
  end
end
