class AddExtra3FieldsToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :is_toilet, :boolean
    add_column :rooms, :is_bathroom, :boolean
    add_column :rooms, :is_separate, :boolean
    add_column :rooms, :is_bidet, :boolean
    add_column :rooms, :is_kichenih, :boolean
    add_column :rooms, :is_balcony, :boolean
    add_column :rooms, :is_bicycle_parking, :boolean
    add_column :rooms, :is_parking, :boolean
    add_column :rooms, :is_elevator, :boolean
    add_column :rooms, :is_autolock, :boolean
    add_column :rooms, :is_quietout, :boolean
    add_column :rooms, :is_quietin, :boolean
    add_column :rooms, :is_station, :boolean
    add_column :rooms, :is_convenience, :boolean
    add_column :rooms, :is_supermarket, :boolean
    add_column :rooms, :is_hospital, :boolean
    add_column :rooms, :is_gym, :boolean
    add_column :rooms, :is_sunny, :boolean
    add_column :rooms, :is_nosmoking, :boolean
    add_column :rooms, :is_waterpressure, :boolean
    add_column :rooms, :is_pet, :boolean
    add_column :rooms, :is_instrument, :boolean
    add_column :rooms, :is_kindness, :boolean
  end
end
