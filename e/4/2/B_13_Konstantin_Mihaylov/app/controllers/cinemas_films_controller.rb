class CinemasFilmsController < ApplicationController
  before_action :set_cinemas_film, only: [:show, :edit, :update, :destroy]

  # GET /cinemas_films
  # GET /cinemas_films.json
  def index
    @cinemas_films = CinemasFilm.all
  end

  # GET /cinemas_films/1
  # GET /cinemas_films/1.json
  def show
  end

  # GET /cinemas_films/new
  def new
    @cinemas_film = CinemasFilm.new
  end

  # GET /cinemas_films/1/edit
  def edit
  end

  # POST /cinemas_films
  # POST /cinemas_films.json
  def create
    @cinemas_film = CinemasFilm.new(cinemas_film_params)

    respond_to do |format|
      if @cinemas_film.save
        format.html { redirect_to @cinemas_film, notice: 'Cinemas film was successfully created.' }
        format.json { render :show, status: :created, location: @cinemas_film }
      else
        format.html { render :new }
        format.json { render json: @cinemas_film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cinemas_films/1
  # PATCH/PUT /cinemas_films/1.json
  def update
    respond_to do |format|
      if @cinemas_film.update(cinemas_film_params)
        format.html { redirect_to @cinemas_film, notice: 'Cinemas film was successfully updated.' }
        format.json { render :show, status: :ok, location: @cinemas_film }
      else
        format.html { render :edit }
        format.json { render json: @cinemas_film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cinemas_films/1
  # DELETE /cinemas_films/1.json
  def destroy
    @cinemas_film.destroy
    respond_to do |format|
      format.html { redirect_to cinemas_films_url, notice: 'Cinemas film was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinemas_film
      @cinemas_film = CinemasFilm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cinemas_film_params
      params.fetch(:cinemas_film, {})
    end
end
