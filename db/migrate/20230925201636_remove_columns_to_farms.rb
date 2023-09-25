class RemoveColumnsToFarms < ActiveRecord::Migration[7.0]
  def change
    remove_column :farms, :organic
    remove_column :farms, :open
  end
end
