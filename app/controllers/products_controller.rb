class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def generate_pdf
    respond_to do |format|
      format.html
      format.pdf do
        render  pdf: "Factura",
             template: 'products/generate_pdf.pdf.erb',
             page_size: 'Letter',
             zoom: 1,
             background: true,
             margin: {
               top: 0,
               bottom:0,
               left:0,
               right:0 
        }
      end
    end
  end
  # GET /products
  # GET /products.json
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

  # GET /products/1
  # GET /products/1.json
 
  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @product }
    end
  end
  

  # GET /products/new
  def new
    @product = Product.new
    respond_to do |f|
      f.html
      f.js 
    end  
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
        format.js
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :sale_price, :purchase_price, :sku, :stock, :state, uploads: [])
    end
end
