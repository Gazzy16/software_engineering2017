class ProgramsController < ApplicationController
  before_action :set_programs
  before_action :set_program, only: [:show, :edit, :update, :destroy]

  # GET threadrs/1/programs
  def index
    @programs = @threadr.programs
  end

  # GET threadrs/1/programs/1
  def show
  end

  # GET threadrs/1/programs/new
  def new
    @program = @threadr.programs.build
  end

  # GET threadrs/1/programs/1/edit
  def edit
  end

  # POST threadrs/1/programs
  def create
    @program = @threadr.programs.build(program_params)

    if @program.save
      redirect_to([@program.threadr, @program], notice: 'Program was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT threadrs/1/programs/1
  def update
    if @program.update_attributes(program_params)
      redirect_to([@program.threadr, @program], notice: 'Program was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE threadrs/1/programs/1
  def destroy
    @program.destroy

    redirect_to threadr_programs_url(@threadr)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programs
      @threadr = Threadr.find(params[:threadr_id])
    end

    def set_program
      @program = @threadr.programs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def program_params
      params.require(:program).permit(:thread_id)
    end
end
