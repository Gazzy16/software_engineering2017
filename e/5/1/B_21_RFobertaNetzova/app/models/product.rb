class Product < ApplicationRecord
	has_many :client_products
	has_many :clents, through: :client_products

end
