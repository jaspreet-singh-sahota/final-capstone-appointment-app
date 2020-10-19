Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :facilities, only: [:index]
      post '/login', to: "users#login"
      post :set_appointment, to: 'appointments#create'
      post :call_appointment, to: 'appointments#index'
    end
  end
end
