class AddOccupiedColumnToParkings < ActiveRecord::Migration[6.1]
  def change
    add_column :parkings, :occupied, :boolean, default: false
  end
end
