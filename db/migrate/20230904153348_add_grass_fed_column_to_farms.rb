class AddGrassFedColumnToFarms < ActiveRecord::Migration[7.0]
  def change
    add_column :farms, :grass_fed, :boolean, default: false
  end
end
