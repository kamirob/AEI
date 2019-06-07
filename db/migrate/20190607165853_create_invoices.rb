class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :prefix, default: "AE"
      t.integer :invoice_number
      t.integer :sub_total
      t.integer :total
      t.references :client, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
