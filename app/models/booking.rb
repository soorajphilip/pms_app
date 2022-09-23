class Booking < ApplicationRecord
	has_one :ticket
	validates :section, presence: true
	validates :registration_number, presence: true
end
