class TestThreadsController < ApplicationController
  before_action :set_test_thread, only: [:show, :edit, :update, :destroy]

  # GET /test_threads
  # GET /test_threads.json
  def index
    @test_threads = TestThread.all
  end

  # GET /test_threads/1
  # GET /test_threads/1.json
  def show
  end

  # GET /test_threads/new
  def new
    @test_thread = TestThread.new
  end

  # GET /test_threads/1/edit
  def edit
  end

  # POST /test_threads
  # POST /test_threads.json
  def create
    @test_thread = TestThread.new(test_thread_params)

    respond_to do |format|
      if @test_thread.save
        format.html { redirect_to @test_thread, notice: 'Test thread was successfully created.' }
        format.json { render :show, status: :created, location: @test_thread }
      else
        format.html { render :new }
        format.json { render json: @test_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_threads/1
  # PATCH/PUT /test_threads/1.json
  def update
    respond_to do |format|
      if @test_thread.update(test_thread_params)
        format.html { redirect_to @test_thread, notice: 'Test thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_thread }
      else
        format.html { render :edit }
        format.json { render json: @test_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_threads/1
  # DELETE /test_threads/1.json
  def destroy
    @test_thread.destroy
    respond_to do |format|
      format.html { redirect_to test_threads_url, notice: 'Test thread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_thread
      @test_thread = TestThread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_thread_params
      params.require(:test_thread).permit(:id)
    end
end
