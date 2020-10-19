class FoodsController < ApplicationController
  def index
    keywords = params[:q]
    conn = Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/')
    response = conn.get("foods/search?api_key=45tec3G0DB9wkPXVf8ni2qwpKriipSJsHljo6MCo&query=#{keywords}")
    @foods = JSON.parse(response.body, symbolize_names: true)
  end
end
