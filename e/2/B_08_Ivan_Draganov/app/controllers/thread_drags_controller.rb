class ThreadDragsController < ApplicationController
  before_action :set_thread_drag, only: [:show, :edit, :update, :destroy]

  # GET /thread_drags
  # GET /thread_drags.json
  def index
    @thread_drags = ThreadDrag.all
  end

  # GET /thread_drags/1
  # GET /thread_drags/1.json
  def show
  end

  # GET /thread_drags/new
  def new
    @thread_drag = ThreadDrag.new
  end

  # GET /thread_drags/1/edit
  def edit
  end
  def setID
	
  end

  # POST /thread_drags
  # POST /thread_drags.json
  def create({:id => :new, :value =>:new}, :without_protection => true)
    @thread_drag = ThreadDrag.new(thread_drag_params)

    respond_to do |format|
      if @thread_drag.save
        format.html { redirect_to @thread_drag, notice: 'Thread drag was successfully created.' }
        format.json { render :show, status: :created, location: @thread_drag }
      else
        format.html { render :new }
        format.json { render json: @thread_drag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thread_drags/1
  # PATCH/PUT /thread_drags/1.json
  def update
    respond_to do |format|
      if @thread_drag.update(thread_drag_params)
        format.html { redirect_to @thread_drag, notice: 'Thread drag was successfully updated.' }
        format.json { render :show, status: :ok, location: @thread_drag }
      else
        format.html { render :edit }
        format.json { render json: @thread_drag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thread_drags/1
  # DELETE /thread_drags/1.json
  def destroy
    @thread_drag.destroy
    respond_to do |format|
      format.html { redirect_to thread_drags_url, notice: 'Thread drag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thread_drag
      @thread_drag = ThreadDrag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thread_drag_params
      params.require(:thread_drag).permit(:t_id, :value)
    end
end
