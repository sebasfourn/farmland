class AddCo2SavedToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :co2_saved, :float
  end
end
