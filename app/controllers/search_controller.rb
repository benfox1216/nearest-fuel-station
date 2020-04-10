class SearchController < ApplicationController
  def index
    find = NrelService.new
    @station = find.nearest_station[:fuel_stations].first
    
    latitude = find.nearest_station[:fuel_stations].first[:latitude]
    longitude = find.nearest_station[:fuel_stations].first[:longitude]
    
    google_service = GoogleService.new
    @google_map = google_service.map_info(latitude, longitude)[:routes].first[:legs].first
  end
end