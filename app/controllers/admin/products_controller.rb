class Admin::ProductsController < AdminController
    def index
        render 'products/index'
    end

    def new
        render 'products/new'
    end
    
end