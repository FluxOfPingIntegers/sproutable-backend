Rails.application.routes.draw do
  get "/locations/zip-search/:zip_code", to: 'locations#index'
#  resources :locations, only: [:create, :update, :delete]
  resources :locations, only: [:show] do
    resources :events, only: [:index, :update, :delete]
  end

  resources :users, except: [:index, :new]

  resources :vendors, except: [:index, :new, :edit]
  resources :vendors, only: [:show] do
    resources :products, only: [:create, :index, :update, :delete, :show]
  end

  resources :sessions, only: [:create]
  get "/me", to: 'sessions#autologin'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
