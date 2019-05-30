class AddFieldsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stock, :integer
    add_column :products, :sku, :string
    add_column :products, :state, :boolean
    add_column :products, :purchase_price, :integer
    add_column :products, :sale_price, :integer
  end
end
