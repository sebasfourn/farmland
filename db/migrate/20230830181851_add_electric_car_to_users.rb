class AddElectricCarToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :electric_car, :boolean
  end
end
