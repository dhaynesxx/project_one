Rails.application.routes.draw do

  root :to => 'pages#home'

  resources :users, :except => [:destroy]
  get '/users/edit' => 'users#edit'

  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/product/add' => 'products#add_cart'
  resources :products, :except => [:destroy]

  resources :orders, :except => [:destroy]

  get '/cart' => 'line_item#index'
  put '/cart/:id/:sign' => 'line_item#change_qty', :as => 'update_item'
  delete '/cart/:id' => 'line_item#destroy', :as => 'delete_item'
  resources :line_items
end
