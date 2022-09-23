class AddBookingRefToTickets < ActiveRecord::Migration[6.1]
  def change
    add_reference :tickets, :booking, null: false, foreign_key: true
  end
end
