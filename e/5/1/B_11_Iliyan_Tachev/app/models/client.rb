class Client < ApplicationRecord
	has_many :product_clients
	has_many :products, through: :product_clients
end
