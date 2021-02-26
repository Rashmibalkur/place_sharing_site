Rails.application.routes.draw do
  resources :shares
  resources :places
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  devise_for :users, controllers: {
    sessions: 'users/sessions',
  }
  get "all_users" => "home#all_users"
  get "/:user_name" => "places#user_places", as: "user_places"

end
