Rails.application.routes.draw do
  resources :acts
  resources :actors
  resources :movies
  devise_for :users
  get '/search' => 'movies#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
