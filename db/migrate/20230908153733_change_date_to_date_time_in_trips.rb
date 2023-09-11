class ChangeDateToDateTimeInTrips < ActiveRecord::Migration[7.0]
  def change

    change_column :trips, :date, :datetime
  end
end
