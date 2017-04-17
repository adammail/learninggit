class CreateSushis < ActiveRecord::Migration[5.0]
  def change
    create_table :sushis do |t|
      t.string :type
      t.integer :price

      t.timestamps
    end
  end
end
