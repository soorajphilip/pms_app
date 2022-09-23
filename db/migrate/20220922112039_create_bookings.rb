class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :entrance
      t.string :registration_number
      t.datetime :entry_time, null: false

      t.timestamps
    end
  end
end
