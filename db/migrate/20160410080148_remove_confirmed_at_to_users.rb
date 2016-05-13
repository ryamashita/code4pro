class RemoveConfirmedAtToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :confirmed_at, :string
  end
end
