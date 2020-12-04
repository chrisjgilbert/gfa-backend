Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :eateries
  end
end
