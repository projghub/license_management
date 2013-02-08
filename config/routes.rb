LicenseManagement::Application.routes.draw do
  match '/dashboard' => 'static_pages#dashboard', as: :dashboard
  match '/login' => 'sessions#new', as: :login
  match '/logout' => 'sessions#destroy', as: :logout

  match '/reports/thirty_sixty_ninety' => 'reports#thirty_sixty_ninety', as: :reports_thirty_sixty_ninety
  match '/reports/month_expire_by_type' => 'reports#month_expire_by_type', as: :reports_month_expire_by_type
  match '/reports/license_type' => 'reports#license_type', as: :reports_license_type
  match '/reports/funding_source' => 'reports#funding_source', as: :reports_funding_source

  resources :events
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
