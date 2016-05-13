class AddExtraFieldsToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :postnumber, :integer
    add_column :rooms, :address_prefecture, :string
    add_column :rooms, :address_city, :string
    add_column :rooms, :address_street, :string
    add_column :rooms, :address_others, :string
    add_column :rooms, :address_details, :string
    add_column :rooms, :monthlyprice, :integer
    add_column :rooms, :monthlyprice_common, :integer
    add_column :rooms, :depositmoney, :integer
    add_column :rooms, :keymoney, :integer
    add_column :rooms, :floor, :string
    add_column :rooms, :area, :float
    add_column :rooms, :compass, :string
    add_column :rooms, :xthfloor, :integer
    add_column :rooms, :xths, :integer
    add_column :rooms, :whenbuilt, :datetime
  end
end
