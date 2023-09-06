class AddClosingTimeToFarms < ActiveRecord::Migration[7.0]
  def change
    add_column :farms, :closing_time, :integer
  end
end
