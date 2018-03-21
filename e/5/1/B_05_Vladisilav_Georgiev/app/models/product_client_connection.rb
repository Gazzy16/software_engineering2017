class ProductClientConnection < ApplicationRecord
	belongs_to :product
	belongs_to :client
end
