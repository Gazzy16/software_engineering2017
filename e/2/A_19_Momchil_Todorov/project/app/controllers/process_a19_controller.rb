class ProcessA19Controller < ApplicationController
	class ProcessA19Controller < ApplicationController
	def index
	end

	def create
		@process = ProcessA19.new(par)
		@process.save
		redirect_to @process
	end

	def show
		@process = ProcessA19.find(params[:id])
	end

private
	def par
		params.require(:product).permit(:name, :description)
end

end
end
