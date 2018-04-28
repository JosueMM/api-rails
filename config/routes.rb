Rails.application.routes.draw do
  resources :ruts_users
  resources :gifts
  resources :ruts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
