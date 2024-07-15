module Cats
  class Client
    def self.facts
      response = Request.call(http_method: 'get', endpoint: 'facts')
    end
  end
end
