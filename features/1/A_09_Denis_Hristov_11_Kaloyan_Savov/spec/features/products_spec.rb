require "rails_helper"

RSpec.feature "Product managment", :type => :feature do
    scenario "Index products shows the name of products" do
        Product.create(name: "da")
        visit "/products"
        expect(page).to have_text "da"
    end

    scenario "Shows the produuct name and creation date on show url" do
        product = Product.create(name: "imence")
        visit "/products/#{product.id}"
        expect(page).to have_text "imence"
        expect(page).to have_text "#{product.created_at}"
    end
end
