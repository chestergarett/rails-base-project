Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'dashboard', to: 'dashboard#index'
  resources :wallets, except: [:destroy] do
    get :deposit
    get :withdraw
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
