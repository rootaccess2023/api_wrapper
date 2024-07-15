module Nutrition
  class Request
    BASE_URL = 'https://api.edamam.com/api/nutrition-data'

    def self.call(http_method:, ingredient:, app_id:, app_key:, nutrition_type:)
      url = "#{BASE_URL}?app_id=#{app_id}&app_key=#{app_key}&nutrition-type=#{nutrition_type}&ingr=#{ingredient}"

        result = RestClient::Request.execute(
          method: http_method,
          url: url,
          headers: { 'Content-Type' => 'application/json' }
        )

        { code: result.code, status: 'Success', data: JSON.parse(result.body) }
      rescue RestClient::ExceptionWithResponse => error
        { code: error.http_code, status: error.message, data: Errors.map(error.http_code) }
      end
    end
end
