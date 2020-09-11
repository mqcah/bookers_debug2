Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  resources :books do
  	  post 'add' => 'likes#create'
  	  delete '/add' => 'likes#destroy'
  end
end