class ThreadMartinMsController < ApplicationController
  before_action :set_thread_martin_ms
  before_action :set_thread_martin_m, only: [:show, :edit, :update, :destroy]

  # GET process_martin_ms/1/thread_martin_ms
  def index
    @thread_martin_ms = @process_martin_m.thread_martin_ms
  end

  # GET process_martin_ms/1/thread_martin_ms/1
  def show
  end

  # GET process_martin_ms/1/thread_martin_ms/new
  def new
    @thread_martin_m = @process_martin_m.thread_martin_ms.build
  end

  # GET process_martin_ms/1/thread_martin_ms/1/edit
  def edit
  end

  # POST process_martin_ms/1/thread_martin_ms
  def create
    @thread_martin_m = @process_martin_m.thread_martin_ms.build(thread_martin_m_params)

    if @thread_martin_m.save
      redirect_to([@thread_martin_m.process_martin_m, @thread_martin_m], notice: 'Thread martin m was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT process_martin_ms/1/thread_martin_ms/1
  def update
    if @thread_martin_m.update_attributes(thread_martin_m_params)
      redirect_to([@thread_martin_m.process_martin_m, @thread_martin_m], notice: 'Thread martin m was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE process_martin_ms/1/thread_martin_ms/1
  def destroy
    @thread_martin_m.destroy

    redirect_to process_martin_m_thread_martin_ms_url(@process_martin_m)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thread_martin_ms
      @process_martin_m = ProcessMartinM.find(params[:process_martin_m_id])
    end

    def set_thread_martin_m
      @thread_martin_m = @process_martin_m.thread_martin_ms.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def thread_martin_m_params
      params.fetch(:thread_martin_m, {})
    end
end
