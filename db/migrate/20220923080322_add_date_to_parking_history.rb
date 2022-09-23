class AddDateToParkingHistory < ActiveRecord::Migration[6.1]
  def change
    add_column :parking_histories, :date, :datetime
  end
end
