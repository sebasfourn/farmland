class AddSeenToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :seen, :boolean, default: false
  end
end
