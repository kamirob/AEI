module ClientsHelper
    def select_clients
        Client.all.pluck(:id, :name, :nit, :contact, :address, :location, :email, :phone, :cell_phone)
    end
end