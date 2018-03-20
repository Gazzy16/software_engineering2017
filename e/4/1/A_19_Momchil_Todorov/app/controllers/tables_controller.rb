class TablesController < ApplicationController
	def index
		render "new"
	end

	def create
	
	end
	
	def show
		@bottle = Bottle.all
		@table = Table.all
	end

	def new

	end
end
