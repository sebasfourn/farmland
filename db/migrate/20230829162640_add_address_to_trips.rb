class AddAddressToTrips < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :address, :string
    rename_column :trips, :departure, :date
  end
end
