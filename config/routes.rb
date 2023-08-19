Rails.application.routes.draw do
  resources :tweets
  resources :usernames
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get :dashboard, to: "dashboard#index"

end
