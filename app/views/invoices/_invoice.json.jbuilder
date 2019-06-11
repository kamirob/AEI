json.extract! invoice, :id, :prefix, :invoice_number, :sub_total, :total, :client_id, :product_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
