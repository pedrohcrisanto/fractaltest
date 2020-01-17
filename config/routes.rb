Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :categories
  devise_for :users
  get '/search' => 'categories#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
