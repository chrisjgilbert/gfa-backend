Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :eateries do
      resources :reviews, only: [:index]
    end
  end
end
