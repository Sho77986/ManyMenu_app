Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'menus#index'
  resources  :menus  do
    resources :menus_status, only: [:index, :show]
  end
  resources :questions,  only: [:index, :create]
end