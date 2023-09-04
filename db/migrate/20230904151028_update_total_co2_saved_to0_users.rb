class UpdateTotalCo2SavedTo0Users < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :total_co2_saved, from: nil, to: 0.0
  end
end
