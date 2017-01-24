Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
  resources :places
  
  get 'events/index'

  get 'almanak/index'

  get 'front_page/index'

  get '/kort', to: 'pages#map'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'front_page#index'

  get '/almanak', to: 'almanak#index'

  get '/events', to: 'events#index'
end
