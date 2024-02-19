class MovieCastsController < ApplicationController
  before_action :set_movie_cast, only: %i[ show edit update destroy ]

  # GET /movie_casts
  def index
    @movie_casts = MovieCast.all
  end

  # GET /movie_casts/1
  def show
  end

  # GET /movie_casts/new
  def new
    @movie_cast = MovieCast.new
  end

  # GET /movie_casts/1/edit
  def edit
  end

  # POST /movie_casts
  def create
    @movie_cast = MovieCast.new(movie_cast_params)

    if @movie_cast.save
      redirect_to @movie_cast, notice: "Movie cast was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_casts/1
  def update
    if @movie_cast.update(movie_cast_params)
      redirect_to @movie_cast, notice: "Movie cast was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /movie_casts/1
  def destroy
    @movie_cast.destroy
    redirect_to movie_casts_url, notice: "Movie cast was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_cast
      @movie_cast = MovieCast.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_cast_params
      params.require(:movie_cast).permit(:movie_id, :person_id, :character_name, :gender_id, :cast_order)
    end
end
