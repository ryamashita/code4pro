class AddExtra4FieldsToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :is_kitchenih, :boolean
  end
end
