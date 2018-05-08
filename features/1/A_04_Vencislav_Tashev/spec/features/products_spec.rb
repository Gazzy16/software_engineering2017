require 'rails_helper'

RSpec.feature 'Product management', type: :feature do
  scenario 'Index products shows the name of the product' do
    Product.create(name: 'Bottle 123')

    visit '/products'

    expect(page).to have_text 'Bottle 123'
  end

  scenario 'shows the product name and creation date on show url' do
    product = Product.create(name: 'Some name')

    visit "products/#{product.id}"

    expect(page).to have_text 'Some name'
    expect(page).to have_text product.created_at.to_s
  end
end
