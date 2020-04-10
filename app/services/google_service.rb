class GoogleService
  def map_info
    get_json("/maps/api/directions/json?origin=Disneyland&destination=Universal+Studios+Hollywood&key=#{ENV['google_api_key']}")
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
