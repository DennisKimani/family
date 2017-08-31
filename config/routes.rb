Rails.application.routes.draw do
  resources :clans
  resources :members
  root :to => 'homes#index'
end
