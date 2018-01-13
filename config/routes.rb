Rails.application.routes.draw do


  # get 'friendships/index'

  # get 'friendships/new'

  resources :friendships

  resources :movies, only: [:index, :show]

  devise_for :users

  root to: 'pages#home'

  resources :users do
    resources :friendships, only: [:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
