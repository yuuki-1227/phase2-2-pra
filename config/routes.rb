Rails.application.routes.draw do

  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users

  resources :users,only: [:show,:index,:edit,:update] do
    resource :favorites, only: [:create, :destroy]
  end
  
  resources :books

  root to: 'homes#top'
  get 'home/about' => 'homes#about'

end