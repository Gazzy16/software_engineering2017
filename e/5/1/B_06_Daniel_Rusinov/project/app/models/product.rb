class Product < ApplicationRecord
    validates :name, uniqueness: true

    has_many :client_products
    has_many :clients, through: :client_product
end
