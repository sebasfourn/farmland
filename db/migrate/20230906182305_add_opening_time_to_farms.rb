class AddOpeningTimeToFarms < ActiveRecord::Migration[7.0]
  def change
    add_column :farms, :opening_time, :integer
  end
end
