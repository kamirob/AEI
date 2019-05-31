Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :categories
      resources :products

      root to: "users#index"
    end
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :products
  resources :categories
  resources :catalog
  get :generate_pdf, to: "products#generate_pdf"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :dashboard
end
