Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'menus#index'
  resources :creans,  only: [:index, :create, :edit, :update]
  resources  :menus  do
    member do
      get 'search'
    end  
  end
  resources :customers, only: [:index, :new, :create,:destroy]
  resources :questions,  only: [:index, :create]
  resources :qr_codes,  only: [:index, :create]
  resources :publish_requests,  only: [:index, :create]
end