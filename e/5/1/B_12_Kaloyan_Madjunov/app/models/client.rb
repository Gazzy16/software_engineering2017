class Client < ApplicationRecord
	has_many :clients_products
	has_many :products, :through => 'clients_products'
end
