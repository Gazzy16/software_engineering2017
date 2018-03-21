class ConnectionsController < ApplicationController
	def index
		@cons = Connection.all
	end

	def new
		# create
	end

	def create
		@connection = Connection.new(params.require(:connection).permit(:developer_id, :project_id))
		@connection.developer_id = params[:developer_id]
		@connection.projects_id = params[:project_id]
		@connection.save
	end
end
