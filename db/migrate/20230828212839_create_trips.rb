class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.date :departure
      t.integer :seat
      t.references :user, null: false, foreign_key: true
      t.references :farm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
