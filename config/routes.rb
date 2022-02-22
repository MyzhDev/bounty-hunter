Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :hunters, only: [:index, :show] do
    resources :contracts, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
