module Dictionary
  class Client
    def self.dictionary(word)
      response = Request.call(http_method: 'get', endpoint: word)
    end
  end
end
