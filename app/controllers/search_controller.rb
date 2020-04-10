class SearchController < ApplicationController
  def index
    find = NrelService.new
    @station = find.nearest_station[:fuel_stations].first
  end
end