Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'about', to: 'pages#about'
  get 'portfolio', to: 'pages#portfolio'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles
end
