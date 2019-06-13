Rails.application.routes.draw do
  resources :invoices
  namespace :admin do
    resources :products do
      member do
          patch :toggle_enable_status
          patch :search
      end
    end
    resources :clients do
      member do
        patch :search_client
      end
    end
    resources :invoices do
      member do
        patch :search_product_invoice
      end
    end
  end

  get :add_product, to: "invoices#add_product"
  get 'admin' => 'admin/products#index'
  resources :clients
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :products_imports, only: [:new, :create] #Import Excel
  resources :products
  resources :categories
  resources :catalog
  get :generate_pdf, to: "products#generate_pdf"
  root 'welcome#index'
end
