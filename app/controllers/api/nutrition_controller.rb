module Api
  class NutritionController < ApplicationController
    def index
      ingredient = params[:ingr]
      app_id = ENV['EDAMAM_APP_ID']
      app_key = ENV['EDAMAM_APP_KEY']
      nutrition_type = params[:nutrition_type] || 'cooking'

      response = Nutrition::Client.nutrition_data(ingredient, app_id, app_key, nutrition_type)

      render json: response
    end
  end
end
