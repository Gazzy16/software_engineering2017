require "rails_helper"

RSpec.feature "Product management", :type => :feature do  
	scenario "Index products shows the priduct name" do
		Product.create(name: "Bottle 3321")

		visit "/products"

		expect(page).to have_text "Bottle 3321"
  	end

	scenario "Shows the name and creation date of the product" do
	product = Product.create(name: "Some name")

	visit "/products/#{product.id}"

	expected(page).to have_text "Some name"
	expected(page).to have_text "#{product.created_at}"
	end
end
