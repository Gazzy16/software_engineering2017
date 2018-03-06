class ThreadA12sController < ApplicationController
  before_action :set_thread_a_12, only: [:show, :edit, :update, :destroy]

  # GET /thread_a_12s
  # GET /thread_a_12s.json
  def index
    @thread_a_12s = ThreadA12.all
  end

  # GET /thread_a_12s/1
  # GET /thread_a_12s/1.json
  def show
  end

  # GET /thread_a_12s/new
  def new
    @thread_a_12 = ThreadA12.new
  end

  # GET /thread_a_12s/1/edit
  def edit
  end

  # POST /thread_a_12s
  # POST /thread_a_12s.json
  def create
    @thread_a_12 = ThreadA12.new(thread_a_12_params)

      if @thread_a_12.save
        format.html { redirect_to @thread_a_12, notice: 'Thread a 12 was successfully created.' }
      else
        format.html { render :new }
      end
  end

  # PATCH/PUT /thread_a_12s/1
  # PATCH/PUT /thread_a_12s/1.json
  def update
      if @thread_a_12.update(thread_a_12_params)
        format.html { redirect_to @thread_a_12, notice: 'Thread a 12 was successfully updated.' }
      else
        format.html { render :edit }
      end
  end

  # DELETE /thread_a_12s/1
  # DELETE /thread_a_12s/1.json
  def destroy
    @thread_a_12.destroy
      format.html { redirect_to thread_a_12s_url, notice: 'Thread a 12 was successfully destroyed.' }
      
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thread_a_12
      @thread_a_12 = ThreadA12.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thread_a_12_params
      params.require(:thread_a_12).permit(:id_process)
    end
end
