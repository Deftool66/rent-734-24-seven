Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: 'dashboards#dashboard'
  get "/profile", to: 'dashboards#edit_profile'
  patch "/profile", to: 'dashboards#update_profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
