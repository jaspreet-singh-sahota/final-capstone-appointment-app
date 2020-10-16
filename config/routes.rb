Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
      resources :facilities, only: [:index]
      delete :logout, to: 'sessions#logout'
      get :logged_in, to: 'sessions#logged_in'
      post :set_appointment, to: 'appointments#create'
      get :get_appointment, to: 'appointments#index'
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
end
