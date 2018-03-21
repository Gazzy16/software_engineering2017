class Client < ApplicationRecord
	  has_many :connection_product_clients
	  has_many :products, through: :connection_product_clients
end
