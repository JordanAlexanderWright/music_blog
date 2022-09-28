Rails.application.routes.draw do
  root "home#index"
  resources :home
  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
