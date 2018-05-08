require "rails_helper"

RSpec.feature "Widget management", :type => :feature do
  scenario "Index products shows the name of the product" do
	Product.create(name: "Bottle")
	visit "/products"
	expect(page).to have_text "Bottle"
  end

  scenario "Shows the product name and creation date on show url" do
	product = Product.create(name: "Some name")

	visit "/products/#{product.id}"

	expect(page).to have_text "Some name"
	expect(page).to have_text "#{product.created_at}"
  end
end
