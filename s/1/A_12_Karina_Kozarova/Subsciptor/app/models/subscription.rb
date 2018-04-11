class Subscription < ApplicationRecord
  validate :price_under_10

  def price_under_10

  end
end
