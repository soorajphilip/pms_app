class ChangeParkingsToSlots < ActiveRecord::Migration[6.1]
  def change
    rename_table :parkings, :slots
    rename_column :slots, :slot, :slot_id
  end
end
