require "rails_helper"

RSpec.feature "Product management", :type => :feature do
  scenario "Index products shows name of product" do
	   Product.create(name: "Bottle 3321")
     visit "/products"

	   expect(page).to have_text "Bottle 3321"
  end

  scenario "Shows product name and date of creation" do
    p = Product.create(name: "name")
    visit "/products/#{p.id}"

    expect(page).to have_text "name"
    expect(page).to have_text "#{p.created_at}"
  end

  scenario "Deletes a product when select delete" do
    name = SecureRandom.hex(16)
    product = Product.create(name: SecureRandom.hex(16))

    visit "/products"
    click_link "Delete"

    expect(Product.where(name: name)).to be_empty
  end
end
