require "administrate/base_dashboard"

class ProductDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    uploads_attachments: Field::HasMany.with_options(class_name: "ActiveStorage::Attachment"),
    uploads_blobs: Field::HasMany.with_options(class_name: "ActiveStorage::Blob"),
    categories: Field::HasMany.with_options(label: "Categorias"),
    id: Field::Number,
    name: Field::String.with_options(label: "Nombre"),
    description: Field::Text,
    price: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    stock: Field::Number,
    sku: Field::String,
    state: Field::Boolean,
    purchase_price: Field::Number,
    sale_price: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :description,
    :stock,
    :sku,
    :state,
    :purchase_price,
    :sale_price,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :uploads_attachments,
    :uploads_blobs,
    :categories,
    :id,
    :name,
    :description,
    :price,
    :created_at,
    :updated_at,
    :stock,
    :sku,
    :state,
    :purchase_price,
    :sale_price,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :description,
    :stock,
    :sku,
    :state,
    :purchase_price,
    :sale_price,
  ].freeze

  # Overwrite this method to customize how products are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(product)
  #   "Product ##{product.id}"
  # end
end
