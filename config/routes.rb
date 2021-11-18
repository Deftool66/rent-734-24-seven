Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: 'dashboards#dashboard'
  get "/classmates", to: 'users#index'
  get "/classmates/:id", to: 'users#show', as: :user
  resources :offers do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
