module Api
  class FactsController < ApplicationController
    def index
      facts = Cats::Client.facts
      render json: facts
    end
  end
end
