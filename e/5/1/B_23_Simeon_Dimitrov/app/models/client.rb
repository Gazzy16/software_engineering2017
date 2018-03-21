class Client < ApplicationRecord
       has_many :client_products
       has_many :products, through: :client_products
       validates :id_product, inclusion: {in: Client.all.map{|t| t.id}, message "No product with such id"}
end
