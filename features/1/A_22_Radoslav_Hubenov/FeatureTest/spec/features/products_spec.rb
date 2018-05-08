require "rails_helper"

RSpec.feature "Product management", :type => :feature do
  scenario "Index products shows the name of the product" do
    Product.create(name: "Bottle 1234")

    visit "/products"

    expect(page).to have_text "Bottle 1234"
#     visit "/widgets/new"

#     fill_in "Name", :with => "My Widget"
#     click_button "Create Widget"

#     expect(page).to have_text("Widget was successfully created.")
   end

   scenario "Shows the product name and creating date on show url" do
    product = Product.create(name: "Some name")

    visit "products/#{product.id}"

    expect(page).to have_text "Some name"
    expect(page).to have_text "#{product.created_at}"
   end

end