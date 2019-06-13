class Admin::ClientsController < Admin::AdminController
  before_action :set_admin_client, only: [:show, :edit, :update, :destroy]

  # GET /admin/clients
  # GET /admin/clients.json
  def index
    @clients = Client.where(["name ILIKE ?","%#{params[:search_client]}%"])    
  end

  # GET /admin/clients/1
  # GET /admin/clients/1.json
  def show
    @clients = Client.all
  end

  # GET /admin/clients/new
  def new
    @client = Client.new
   
  end

  # GET /admin/clients/1/edit
  def edit
  end

  # POST /admin/clients
  # POST /admin/clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
        format.js
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  # DELETE /admin/clients/1
  # DELETE /admin/clients/1.json
  def destroy
    @admin_client.destroy
    respond_to do |format|
      format.html { redirect_to admin_clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_client
      @admin_client = Admin::Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_client_params
      params.fetch(:admin_client, {})
    end
end
