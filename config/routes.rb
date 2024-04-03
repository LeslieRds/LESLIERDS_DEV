Rails.application.routes.draw do
  get 'comments/new'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :posts do
    resources :comments, only: %i[new create edit update destroy index show]
  end

  resources :comments, only: %i[destroy]
  resources :users, only: %i[new]
  resources :abouts
  resources :portfolios

end
