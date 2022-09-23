class CreateParkings < ActiveRecord::Migration[6.1]
  def change
    create_table :parkings do |t|
      t.integer :entrance
      t.integer :slot
      t.integer :distance

      t.timestamps
    end
  end
end
