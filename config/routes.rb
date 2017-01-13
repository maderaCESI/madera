Rails.application.routes.draw do
  
    #Les ressources
  resources :clients
  resources :project_modular_houses
  resources :providers
  resources :modulus
  resources :components
  resources :scale_modular_houses
  resources :order_quote_clients
  resources :family_components
  
  
  #Rails_Admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  #Devise
  devise_for :users
  
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
