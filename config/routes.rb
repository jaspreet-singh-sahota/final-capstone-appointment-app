Rails.application.routes.draw do
  resources :sessions, only: [:create]
  root 'homepage#index'
  resources :registrations, only: [:create]
end
