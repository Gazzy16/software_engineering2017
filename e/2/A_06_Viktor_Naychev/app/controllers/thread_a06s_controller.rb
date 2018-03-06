class ThreadA06sController < ApplicationController
  before_action :set_thread_a06, only: [:show, :edit, :update, :destroy]

  # GET /thread_a06s
  # GET /thread_a06s.json
  def index
    @thread_a06s = ThreadA06.all
  end

  # GET /thread_a06s/1
  # GET /thread_a06s/1.json
  def show
  end

  # GET /thread_a06s/new
  def new
    @thread_a06 = ThreadA06.new
  end

  # GET /thread_a06s/1/edit
  def edit
  end

  # POST /thread_a06s
  # POST /thread_a06s.json
  def create
    @thread_a06 = ThreadA06.new(thread_a06_params)

    respond_to do |format|
      if @thread_a06.save
        format.html { redirect_to @thread_a06, notice: 'Thread a06 was successfully created.' }
        format.json { render :show, status: :created, location: @thread_a06 }
      else
        format.html { render :new }
        format.json { render json: @thread_a06.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thread_a06s/1
  # PATCH/PUT /thread_a06s/1.json
  def update
    respond_to do |format|
      if @thread_a06.update(thread_a06_params)
        format.html { redirect_to @thread_a06, notice: 'Thread a06 was successfully updated.' }
        format.json { render :show, status: :ok, location: @thread_a06 }
      else
        format.html { render :edit }
        format.json { render json: @thread_a06.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thread_a06s/1
  # DELETE /thread_a06s/1.json
  def destroy
    @thread_a06.destroy
    respond_to do |format|
      format.html { redirect_to thread_a06s_url, notice: 'Thread a06 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thread_a06
      @thread_a06 = ThreadA06.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thread_a06_params
      params.require(:thread_a06).permit(:processA06_id)
    end
end
