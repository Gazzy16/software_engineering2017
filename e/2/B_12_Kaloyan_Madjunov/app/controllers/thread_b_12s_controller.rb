class ThreadB12sController < ApplicationController
  before_action :set_thread_b_12, only: [:show, :edit, :update, :destroy]

  # GET /thread_b_12s
  # GET /thread_b_12s.json
  def index
    @thread_b_12s = ThreadB12.all
  end

  # GET /thread_b_12s/1
  # GET /thread_b_12s/1.json
  def show
  end

  # GET /thread_b_12s/new
  def new
    @thread_b_12 = ThreadB12.new
  end

  # GET /thread_b_12s/1/edit
  def edit
  end

  # POST /thread_b_12s
  # POST /thread_b_12s.json
  def create
    @thread_b_12 = ThreadB12.new(thread_b_12_params)

    respond_to do |format|
      if @thread_b_12.save
        format.html { redirect_to @thread_b_12, notice: 'Thread b 12 was successfully created.' }
        format.json { render :show, status: :created, location: @thread_b_12 }
      else
        format.html { render :new }
        format.json { render json: @thread_b_12.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thread_b_12s/1
  # PATCH/PUT /thread_b_12s/1.json
  def update
    respond_to do |format|
      if @thread_b_12.update(thread_b_12_params)
        format.html { redirect_to @thread_b_12, notice: 'Thread b 12 was successfully updated.' }
        format.json { render :show, status: :ok, location: @thread_b_12 }
      else
        format.html { render :edit }
        format.json { render json: @thread_b_12.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thread_b_12s/1
  # DELETE /thread_b_12s/1.json
  def destroy
    @thread_b_12.destroy
    respond_to do |format|
      format.html { redirect_to thread_b_12s_url, notice: 'Thread b 12 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thread_b_12
      @thread_b_12 = ThreadB12.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thread_b_12_params
      params.require(:thread_b_12).permit(:value)
    end
end
