class Product < ApplicationRecord
    has_many_attached :uploads
    has_and_belongs_to_many :categories
end
