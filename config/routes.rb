Rails.application.routes.draw do
  resources :pictures
  # get 'sessions/new'
  resources :users, only: [:new, :create, :show, :destroy ]
  resources :sessions, only: [:new, :create, :destroy]
end
