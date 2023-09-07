class RemoveColumnsToProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :name
    remove_column :products, :category
    remove_column :products, :co2_saved
  end
end
