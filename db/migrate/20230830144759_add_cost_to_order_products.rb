class AddCostToOrderProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :order_products, :cost, :float
  end
end
