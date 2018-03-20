class TablesController < ApplicationController
	def index
		render "new"
	end

	def create
		@table = Table.new(par)
		@table.save
		redirect_to @table	
	end
	
	def show
		@bottle = Bottle.all
		@table = Table.all
	end

	def new

	end
end
