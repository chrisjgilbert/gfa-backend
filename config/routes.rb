Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    post 'signup', to: 'users#create'
    post 'login', to: 'users#login'
    
    resources :eateries do
      resources :reviews, only: [:index]
    end
  end
end
