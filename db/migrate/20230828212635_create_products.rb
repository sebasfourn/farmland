class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :unit
      t.integer :stock
      t.references :farm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
