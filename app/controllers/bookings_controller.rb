class BookingsController < ApplicationController

  def index
    @slots_left = Slot.where(occupied: false).count
  end

  def create
    @reg_number = params[:booking][:registration_number].gsub(/[^0-9A-Za-z]/, '').upcase

    unless ParkingHistory.where(date: Time.now.to_date).find_by(registration_number: @reg_number)
      @slot = select_slot
      unless @slot.nil?
        @vehicle = Vehicle.create(registration_number: @reg_number) if Vehicle.find_by(registration_number: @reg_number).blank?

        @booking = Booking.new(booking_params)
        @booking.section = @slot.section
        @booking.registration_number = @reg_number
        @booking.entry_time = Time.now
        @booking.save

        @ticket = @booking.create_ticket(slot: @slot.slot_id)

        @slot.update(occupied: true)

        @parking_history = ParkingHistory.create(
          section: @slot.section,
          slot: @slot.slot_id,
          registration_number: @reg_number,
          entry_time: Time.now,
          date: Time.now.to_date
        )
      end
    end
  end

  private

  def select_slot
    sections = [1,2,3,4]
    @section = params[:booking][:section].to_i
    sections.delete(@section)
    @remaining_sections = sections.sort

    if Slot.where(section: @section, occupied: false).present?
      @slot = Slot.where(section: @section, occupied: false).first
    elsif Slot.where(section: @remaining_sections[0], occupied: false).present?
      @slot = Slot.where(section: @remaining_sections[0], occupied: false).first
    elsif Slot.where(section: @remaining_sections[1], occupied: false).present?
      @slot = Slot.where(section: @remaining_sections[1], occupied: false).first
    elsif Slot.where(section: @remaining_sections[2], occupied: false).present?
      @slot = Slot.where(section: @remaining_sections[2], occupied: false).first
    else
      @slot = nil
    end
  end

  def booking_params
    params.require(:booking).permit(:section, :registration_number, :entry_time)
  end
end
