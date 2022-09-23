class CreateParkingHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :parking_histories do |t|
      t.integer :entrance
      t.integer :slot
      t.string :registration_number
      t.datetime :entry_time
      t.datetime :exit_time
      t.float :duration

      t.timestamps
    end
  end
end
