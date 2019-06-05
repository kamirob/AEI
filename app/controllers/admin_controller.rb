class AdminController < ApplicationController
    before_action :authenticate_user!

    def show
        @products = Product.all
        @clients = Client.all
    end

    def index
        @products = Product.all
        @clients = Client.all
    end

    def new
        @product = Product.new
        respond_to do |f|
          f.html
          f.js 
        end  
    end

end

