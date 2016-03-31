Rails.application.routes.draw do

  root :to => 'products#index'
  get '/pages/contact' => 'pages#contact'

  resources :users, :except => [:destroy]
  get '/users/edit' => 'users#edit'

  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/products/:id/purchase' => 'products#purchase_stock', :as => 'purchase_stock'
  patch '/products/:id/add' => 'products#add_stock', :as => 'add_stock'
  resources :products, :except => [:destroy]

  get '/order/:id/update' => 'orders#update', :as => 'update_order'
  resources :orders, :except => [:destroy, :create]

  resources :businesses, :only => [:show, :edit, :update]

  get '/cart' => 'line_item#index'
  get '/cart/add' => 'line_item#add_cart'
  put '/cart/:id/:sign' => 'line_item#change_qty', :as => 'update_item'
  delete '/cart/:id' => 'line_item#destroy', :as => 'delete_item'
  delete '/cart/:id/all' => 'line_item#destroy_cart', :as => 'delete_cart'
  resources :line_items

  get '/reports/inventory' => 'reports#inventory'
  get '/reports/sales' => 'reports#sales'
  get '/reports/profit' => 'reports#profit'
  get '/reports/shipping' => 'reports#shipping'
  get '/reports/finalise' => 'reports#finalise'

  resources :charges

end
