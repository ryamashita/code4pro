class RemoveConfirmationSentAtToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :confirmation_sent_at, :string
  end
end
