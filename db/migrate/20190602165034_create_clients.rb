class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :nit
      t.string :contact
      t.string :address
      t.string :location
      t.string :email
      t.string :phone
      t.string :cell_phone

      t.timestamps
    end
  end
end
