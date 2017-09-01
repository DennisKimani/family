Rails.application.routes.draw do
  root :to => 'homes#index'
  resources :clans do
    resources :members
  end
end
