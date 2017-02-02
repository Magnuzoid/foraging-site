Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
  resources :places, path: :kort
  resources :categories
  resources :pages
  resources :users, :only => [:show]

  root 'places#index'

  #get 'users/:id' => 'users#show'

end
