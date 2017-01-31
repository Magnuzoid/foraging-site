Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
  resources :places, path: :kort
  resources :categories

  get 'events/index'

  get 'almanak/index'

  get 'front_page/index'

  #get '/kort', to: 'places#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'front_page#index'

  get '/almanak', to: 'almanak#index'

  get '/events', to: 'events#index'


end
