LicenseManagement::Application.routes.draw do
  match '/dashboard' => 'static_pages#dashboard', as: :dashboard
  match '/login' => 'sessions#new', as: :login
  match '/logout' => 'sessions#destroy', as: :logout

  resources :agreement_statuses
  resources :agreements
  resources :funding_sources
  resources :license_types
  resources :purchase_orders
  resources :regions
  resources :sessions, only: [:new, :create, :destroy]
 
  root :to => 'static_pages#dashboard'
end
