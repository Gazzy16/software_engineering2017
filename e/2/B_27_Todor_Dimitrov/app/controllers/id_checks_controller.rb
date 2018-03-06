class IdChecksController < ApplicationController
  before_action :set_id_check, only: [:show, :edit, :update, :destroy]

  # GET /id_checks
  # GET /id_checks.json
  def index
    @id_checks = IdCheck.all
  end

  # GET /id_checks/1
  # GET /id_checks/1.json
  def show
  end

  # GET /id_checks/new
  def new
    @id_check = IdCheck.new
  end

  # GET /id_checks/1/edit
  def edit
  end

  # POST /id_checks
  # POST /id_checks.json
  def create
    @id_check = IdCheck.new(id_check_params)

    respond_to do |format|
      if @id_check.save
        format.html { redirect_to @id_check, notice: 'Id check was successfully created.' }
        format.json { render :show, status: :created, location: @id_check }
      else
        format.html { render :new }
        format.json { render json: @id_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /id_checks/1
  # PATCH/PUT /id_checks/1.json
  def update
    respond_to do |format|
      if @id_check.update(id_check_params)
        format.html { redirect_to @id_check, notice: 'Id check was successfully updated.' }
        format.json { render :show, status: :ok, location: @id_check }
      else
        format.html { render :edit }
        format.json { render json: @id_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /id_checks/1
  # DELETE /id_checks/1.json
  def destroy
    @id_check.destroy
    respond_to do |format|
      format.html { redirect_to id_checks_url, notice: 'Id check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_id_check
      @id_check = IdCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def id_check_params
      params.require(:id_check).permit(:Test_Thread_id)
    end
end
