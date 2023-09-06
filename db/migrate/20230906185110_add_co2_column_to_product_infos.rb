class AddCo2ColumnToProductInfos < ActiveRecord::Migration[7.0]
  def change
    add_column :product_infos, :co2_saved, :float
  end
end
