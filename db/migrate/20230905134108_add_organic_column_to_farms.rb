class AddOrganicColumnToFarms < ActiveRecord::Migration[7.0]
  def change
    add_column :farms, :organic, :boolean, default: true
  end
end
