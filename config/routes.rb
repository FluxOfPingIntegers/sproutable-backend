Rails.application.routes.draw do
  #resources :carts
  #resources :items
  #resources :products
  #resources :orders
  #resources :events
  #resources :vendors
  get "/locations/zip-search/:zip_code", to: 'locations#index'
  resources :locations, only: [:create, :show, :update, :delete]
  resources :users, except: [:index, :new]
  resources :sessions, only: [:create]
  get "/me", to: 'sessions#autologin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
