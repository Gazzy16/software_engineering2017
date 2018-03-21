class Client < ApplicationRecord
	validates :name, uniqueness: true
	has_many :client_products
	has_many :products, through: :client_products
end
