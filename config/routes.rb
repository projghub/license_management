LicenseManagement::Application.routes.draw do
  match '/dashboard' => 'static_pages#dashboard', as: :dashboard
  match '/login' => 'sessions#new', as: :login
  match '/logout' => 'sessions#destroy', as: :logout

  resources :funding_sources
  resources :license_statuses
  resources :license_types
  resources :product_versions
  resources :purchase_orders do
    resources :licenses
  end
  resources :regions
  resources :sessions, only: [:new, :create, :destroy]
 
  root :to => 'static_pages#dashboard'
end
