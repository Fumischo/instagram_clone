Rails.application.routes.draw do
  root to: 'pictures#index'
  resources :users, only: [:new, :create, :show, :destroy ]
  resources :sessions, only: [:new, :create, :destroy]
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :favorites, only: [:create, :destroy,:show]


  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
