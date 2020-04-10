class GoogleService
  def map_info(latitude, longitude)
    get_json("/maps/api/directions/json?origin=1331+17th+St+Denver+CO&destination=#{latitude}+#{longitude}&key=#{ENV['google_api_key']}")
  end

  private

  def get_json(url)
    response = conn.get(url)
    @json = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://maps.googleapis.com')
  end
end
