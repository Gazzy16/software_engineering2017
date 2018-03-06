class ProcessA17MartinMarkovsController < ApplicationController
  before_action :set_process_a17_martin_markov, only: [:show, :edit, :update, :destroy]

  # GET /process_a17_martin_markovs
  # GET /process_a17_martin_markovs.json
  def index
    @process_a17_martin_markovs = ProcessA17MartinMarkov.all
  end

  # GET /process_a17_martin_markovs/1
  # GET /process_a17_martin_markovs/1.json
  def show
  end

  # GET /process_a17_martin_markovs/new
  def new
    @process_a17_martin_markov = ProcessA17MartinMarkov.new
  end

  # GET /process_a17_martin_markovs/1/edit
  def edit
  end

  # POST /process_a17_martin_markovs
  # POST /process_a17_martin_markovs.json
  def create
    @process_a17_martin_markov = ProcessA17MartinMarkov.new(process_a17_martin_markov_params)

    respond_to do |format|
      if @process_a17_martin_markov.save
        format.html { redirect_to @process_a17_martin_markov, notice: 'Process a17 martin markov was successfully created.' }
        format.json { render :show, status: :created, location: @process_a17_martin_markov }
      else
        format.html { render :new }
        format.json { render json: @process_a17_martin_markov.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /process_a17_martin_markovs/1
  # PATCH/PUT /process_a17_martin_markovs/1.json
  def update
    respond_to do |format|
      if @process_a17_martin_markov.update(process_a17_martin_markov_params)
        format.html { redirect_to @process_a17_martin_markov, notice: 'Process a17 martin markov was successfully updated.' }
        format.json { render :show, status: :ok, location: @process_a17_martin_markov }
      else
        format.html { render :edit }
        format.json { render json: @process_a17_martin_markov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /process_a17_martin_markovs/1
  # DELETE /process_a17_martin_markovs/1.json
  def destroy
    @process_a17_martin_markov.destroy
    respond_to do |format|
      format.html { redirect_to process_a17_martin_markovs_url, notice: 'Process a17 martin markov was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_a17_martin_markov
      @process_a17_martin_markov = ProcessA17MartinMarkov.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_a17_martin_markov_params
      params.require(:process_a17_martin_markov).permit(:name)
    end
end
