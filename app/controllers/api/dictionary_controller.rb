module Api
  class DictionaryController < ApplicationController
    def index
      word = params[:word]
      search_word = Dictionary::Client.dictionary(word)
      render json: search_word
    end
  end
end
