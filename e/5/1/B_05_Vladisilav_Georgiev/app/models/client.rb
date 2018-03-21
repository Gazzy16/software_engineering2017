class Client < ApplicationRecord
	has_many :product_client_connections
	has_many :products, through: :product_client_connections
end
