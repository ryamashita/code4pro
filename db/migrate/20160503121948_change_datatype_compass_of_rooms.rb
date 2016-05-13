class ChangeDatatypeCompassOfRooms < ActiveRecord::Migration
  def change
    change_column :rooms, :compass, :string
  end
end