class ChangeBookingsEntranceDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :entrance, 'integer USING CAST(entrance AS integer)'
  end
end
