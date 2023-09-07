class AddProductInfoToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :product_info, foreign_key: true
  end
end
