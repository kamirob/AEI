Rails.application.routes.draw do
  resources :clients
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :products
  resources :products_imports, only: [:new, :create] #Import Excel
  resources :categories
  resources :catalog
  get :generate_pdf, to: "products#generate_pdf"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
