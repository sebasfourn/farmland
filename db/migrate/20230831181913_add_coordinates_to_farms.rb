class AddCoordinatesToFarms < ActiveRecord::Migration[7.0]
  def change
    add_column :farms, :latitude, :float
    add_column :farms, :longitude, :float
  end
end
