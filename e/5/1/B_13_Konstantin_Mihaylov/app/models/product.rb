class Product < ApplicationRecord
	 has_many :connection_product_clients
	 has_many :clients, through: :connection_product_clients
	 validates :client_name, uniqueness: true
end
