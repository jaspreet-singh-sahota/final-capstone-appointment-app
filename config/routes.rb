Rails.application.routes.draw do
  resources :sessions, only: [:create]
  root 'homepage#index'
  resources :registrations, only: [:create]
  resources :facilities, only: [:index]
  resources :appointments,  only: [:index, :create, :destroy]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
end
