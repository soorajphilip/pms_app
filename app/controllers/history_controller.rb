class HistoryController < ApplicationController

  def index; end

  def search_query
    @start_date = params[:range].split(' - ').first
    @end_date = params[:range].split(' - ').last
    @parking_history = ParkingHistory.where(:date => @start_date..@end_date)
  end
end
