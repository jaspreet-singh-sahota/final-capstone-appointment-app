Rails.application.routes.draw do
  resources :sessions, only: [:create]
  root 'homepage#index'
  resources :registrations, only: [:create]
  resources :facilities, only: [:index]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  post :set_appointment, to: 'appointments#create'
  get :get_appointment, to: 'appointments#index'
end
