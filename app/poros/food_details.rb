class FoodDetails
  attr_reader :gtin,
              :description,
              :brand_owner,
              :ingredients

  def initialize(attr)
    @gtin = attr[:gtinUpc]
    @description = attr[:description]
    @brand_ownder = attr[:brandOwner]
    @ingredients = attr[:ingredients]
  end
end