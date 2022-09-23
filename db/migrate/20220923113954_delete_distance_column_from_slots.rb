class DeleteDistanceColumnFromSlots < ActiveRecord::Migration[6.1]
  def change
    remove_column :slots, :distance
  end
end
