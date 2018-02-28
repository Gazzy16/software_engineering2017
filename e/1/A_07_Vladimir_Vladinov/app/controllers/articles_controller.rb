class ArticlesController < ApplicationController
  def new
  end

	def add
		name = params[:nameTextBox]
		desc = params[:descriptionTextBox]

		p = Product.create(:name => name, :description => desc)

		render plain: p.id
	end

	def del
		Product.find_each(&:destroy)
		render plain: "doned"
	end

	def ord
		num = params[:id]
		Order.create(:iden => num, :daten => Time.now)
		render plain: "Order has been addded"
	end
end
