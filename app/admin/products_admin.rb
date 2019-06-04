Trestle.resource(:products) do
  menu do
    item :products, icon: "fa fa-list-ul"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id, align: :center
    column :name, align: :center
    column :description, align: :center
    column :sku, align: :center
    column :state, align: :center
    column :stock, align: :center
    column :purchase_price, align: :center
    column :sale_price, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |product|
    text_field :name
    text_area :description
    text_field :sku
    text_field :stock
    check_box :state
    text_field :purchase_price
    text_field :sale_price
   end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:product).permit(:name, ...)
  # end
end
