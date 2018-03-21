class Product < ApplicationRecord
	has_many :clients_products
	has_many :clients, :through => 'clients_products'

	validates :name, uniqueness: true
end
