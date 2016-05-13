class AddExtraFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name_kanji_first, :string
    add_column :users, :name_kanji_second, :string
    add_column :users, :name_kana_first, :string
    add_column :users, :name_kana_second, :string
    add_column :users, :sex, :integer
    add_column :users, :move_at, :datetime
    add_column :users, :moved_at, :datetime
    add_column :users, :move_to_postnumber, :integer
    add_column :users, :move_to_address, :string
  end
end
