class Admin::AdminController < ApplicationController
    before_action :authenticate_user!

    def index
        @products = Product.all
        respond_to do |format|
          format.xlsx {
            response.headers[
              'Content-Disposition'
            ] = "attachment; filename=productos.xlsx"
          }
          format.html { render :index }
        end
    end
    def show
      @products = Product.all
      @clients = Client.all
      @invoices = Invoice.all
    end

    

    def new
      @product = Product.new
      @invoice = Invoice.new
      @client = Client.new
      respond_to do |f|
        f.html
        f.js 
      end  
    end
  
end

