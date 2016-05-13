class ChangeDatatypeKeymoneyOfRooms < ActiveRecord::Migration
  def change
    change_column :rooms, :keymoney, :string
  end
end