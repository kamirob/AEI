json.extract! client, :id, :name, :nit, :contact, :address, :location, :email, :phone, :cell_phone, :created_at, :updated_at
json.url client_url(client, format: :json)
