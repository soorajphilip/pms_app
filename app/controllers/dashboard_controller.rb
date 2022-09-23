class DashboardController < ApplicationController

  def index
    @slots_left = Slot.where(occupied: false).count
  end
end
