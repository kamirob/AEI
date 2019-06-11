class Invoice < ApplicationRecord
  belongs_to :clients
  belongs_to :product

  def client_name
    clients.try(:name)
  end

  def client_name=(name)
    self.clients = Client.find_by_name(name) if name.present?
  end
  
end
