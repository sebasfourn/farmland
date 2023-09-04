class AddTotalCo2SavedToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :total_co2_saved, :float
  end
end
