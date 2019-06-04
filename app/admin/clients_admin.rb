Trestle.resource(:clients) do
  menu do
    item :clients, icon: "fa fa-users"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id, align: :center
    column :name, align: :center
    column :nit, align: :center
    column :contact, align: :center
    column :address, align: :center
    column :location, align: :center
    column :email, align: :center
    column :phone, align: :center
    column :cell_phone, align: :center
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |client|
    text_field :name
    text_field :nit
    text_field :contact
    text_field :address
    text_field :location
    text_field :email
    text_field :phone
    text_field :cell_phone
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:client).permit(:name, ...)
  # end
 
end
