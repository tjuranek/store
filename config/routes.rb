Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :products do
    resources :subscribers, only: [ :create ]
  end
  get "up" => "rails/health#show", as: :rails_health_check
  root "products#index"
end
