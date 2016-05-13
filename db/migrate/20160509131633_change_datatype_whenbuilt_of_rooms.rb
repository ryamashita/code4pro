class ChangeDatatypeWhenbuiltOfRooms < ActiveRecord::Migration
  def change
    change_column :rooms, :whenbuilt, :string 
  end
end
