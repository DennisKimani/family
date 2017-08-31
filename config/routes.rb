Rails.application.routes.draw do
  resources :clans
  root :to => 'homes#index'
end
