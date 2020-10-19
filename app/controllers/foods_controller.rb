class FoodsController < ApplicationController
  def index
    keywords = params[:q]
    conn = Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/')
    response = conn.get("foods/search?query=#{keywords}&api_key=#{ENV['API_KEY']}")



    require 'pry'; binding.pry
  end

  def show
    require 'pry'; binding.pry
  end
end



  # conn = Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/')
  # response = conn.get ("foods?fdcIds=534358,534350&api_key=45tec3G0DB9wkPXVf8ni2qwpKriipSJsHljo6MCo")
  # @food = JSON.parse(response.body, symbolize_names: true)


  # https://api.nal.usda.gov/fdc/v1/foods/search?query=cheddar%20cheese

  # https://api.nal.usda.gov/fdc/v1/foods/search?query=cheddar%20cheese&api_key=45tec3G0DB9wkPXVf8ni2qwpKriipSJsHljo6MCo