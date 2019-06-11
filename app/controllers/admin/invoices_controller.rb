class Admin::InvoicesController < ApplicationController
  before_action :set_admin_invoice, only: [:show, :edit, :update, :destroy]

  # GET /admin/invoices
  # GET /admin/invoices.json
  def index
    @invoices = Invoice.all
    
  end

  # GET /admin/invoices/1
  # GET /admin/invoices/1.json
  def show
  end

  # GET /admin/invoices/new
  def new
    @invoice = Invoice.new
  end

  # GET /admin/invoices/1/edit
  def edit
  end

  # POST /admin/invoices
  # POST /admin/invoices.json
  def create
    @invoice = Invoice.new(invoice_params)

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to @invoice, notice: 'Invoice was successfully created.' }
        format.json { render :show, status: :created, location: @invoice }
        format.js
      else
        format.html { render :new }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to @invoice, notice: 'Invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice }
      else
        format.html { render :edit }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/invoices/1
  # PATCH/PUT /admin/invoices/1.json
  def update
    respond_to do |format|
      if @admin_invoice.update(admin_invoice_params)
        format.html { redirect_to @admin_invoice, notice: 'Invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_invoice }
      else
        format.html { render :edit }
        format.json { render json: @admin_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/invoices/1
  # DELETE /admin/invoices/1.json
  def destroy
    @admin_invoice.destroy
    respond_to do |format|
      format.html { redirect_to admin_invoices_url, notice: 'Invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_invoice
      @admin_invoice = Admin::Invoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_invoice_params
      params.fetch(:admin_invoice, {})
    end
end
