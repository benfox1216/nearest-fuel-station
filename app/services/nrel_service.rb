class NrelService
  def nearest_station
    get_json("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['nrel_api_key']}&location=1331+17th+St+Denver+CO&fuel_type=ELEC&limit=1")
  end

  private

  def get_json(url)
    response = conn.get(url)
    @json = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://developer.nrel.gov")
  end
end