Rails.application.routes.draw do
  resources :sessions, only: [:create]
  root 'homepage#index'
end
