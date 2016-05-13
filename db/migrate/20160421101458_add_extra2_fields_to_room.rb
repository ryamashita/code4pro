class AddExtra2FieldsToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :lessor_name, :string
    add_column :rooms, :lessor_address, :string
  end
end
