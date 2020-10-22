Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :authentication, only: [:create]
      resources :facilities, only: [:index]
      resources :appointments, only: [:index, :create]
      post '/login', to: "authentication#login"
    end
  end
end
