class FoodFacade
  def self.keyword_search(keywords)
    foods = FoodService.keyword_search(keywords)[:foods]
  end
end