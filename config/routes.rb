Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :hunters, only: [:index, :show, :new, :create] do
    resources :contracts, only: [:new, :create, :edit, :update]
  end
  resources :contracts, only: [:destroy]
end
