Rails.application.routes.draw do

  root :to => 'pages#home'

  resources :users, :except => [:destroy]
  get '/users/edit' => 'users#edit'

  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  resources :products, :except => [:destroy]

  get '/order/:id/update' => 'orders#update', :as => 'update_order'
  resources :orders, :except => [:destroy]

  get '/cart' => 'line_item#index'
  get '/cart/add' => 'line_item#add_cart'
  put '/cart/:id/:sign' => 'line_item#change_qty', :as => 'update_item'
  delete '/cart/:id' => 'line_item#destroy', :as => 'delete_item'
  resources :line_items

  get '/reports/inventory' => 'reports#inventory'
  get '/reports/purchase' => 'reports#purchase'

end
