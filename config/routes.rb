Rails.application.routes.draw do
  namespace :api do
    get '/facts', to: 'facts#index'
    get '/dictionary', to: 'dictionary#index'
  end
end
