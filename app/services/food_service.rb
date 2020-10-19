class FoodService

  def self.keyword_search(keywords)
    response = keyword_search_endpoint(keywords)
    parse(response)
  end

  private

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.keyword_search_endpoint(keywords)
    conn.get("foods/search?api_key=45tec3G0DB9wkPXVf8ni2qwpKriipSJsHljo6MCo&query=#{keywords}")
  end
end