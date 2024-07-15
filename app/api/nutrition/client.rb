module Nutrition
  class Client
    BASE_URL = 'https://api.edamam.com/api/nutrition-data'

    def self.nutrition_data(ingredient, app_id, app_key, nutrition_type)
      response = Request.call(http_method: 'get', ingredient: ingredient, app_id: app_id, app_key: app_key, nutrition_type: nutrition_type)
      response
    end
  end
end
