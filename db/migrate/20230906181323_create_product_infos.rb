class CreateProductInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :product_infos do |t|
      t.string :name
      t.string :category
      t.integer :month

      t.timestamps
    end
  end
end
