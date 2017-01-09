Rails.application.routes.draw do
  
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
  
  
  #Autres
  get 'home/private'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
