class CatalogController < ApplicationController
    before_action :get_category, only: [:index, :show, :edit, :update, :destroy]
    before_action :get_product, only: [:index, :show, :edit, :update, :destroy]


    def index
        get_category
        get_product
    end

    private

    #Mostrar en index/catalog las categorias 
    def get_category
        @categories = Category.all
    end    
    
    def get_product
        @products = Product.all
    end
    
end
