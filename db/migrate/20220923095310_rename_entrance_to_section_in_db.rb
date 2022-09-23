class RenameEntranceToSectionInDb < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :entrance, :section
    rename_column :parking_histories, :entrance, :section
    rename_column :slots, :entrance, :section
  end
end
