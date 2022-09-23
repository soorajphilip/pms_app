class SearchController < ApplicationController

  def index; end

  def search_query
    @reg_number = params[:reg_number].gsub(/[^0-9A-Za-z]/, '').upcase
    @parking_history = ParkingHistory.where(registration_number: @reg_number)
  end
end
