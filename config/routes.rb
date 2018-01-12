Rails.application.routes.draw do
  resources :purchase_infos
  resources :users

  root to: "purchase_infos#index"

  resource :user_session, only: [:create, :new, :destroy]

  match 'register', to: "users#new", via: :all
  match 'login', to: 'user_sessions#new', via: :all
  match 'logout', to: 'user_sessions#destroy', via: :all
end
