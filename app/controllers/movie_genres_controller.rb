class MovieGenresController < ApplicationController
  before_action :set_movie_genre, only: %i[ show edit update destroy ]

  # GET /movie_genres
  def index
    @movie_genres = MovieGenre.all
  end

  # GET /movie_genres/1
  def show
  end

  # GET /movie_genres/new
  def new
    @movie_genre = MovieGenre.new
  end

  # GET /movie_genres/1/edit
  def edit
  end

  # POST /movie_genres
  def create
    @movie_genre = MovieGenre.new(movie_genre_params)

    if @movie_genre.save
      redirect_to @movie_genre, notice: "Movie genre was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_genres/1
  def update
    if @movie_genre.update(movie_genre_params)
      redirect_to @movie_genre, notice: "Movie genre was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /movie_genres/1
  def destroy
    @movie_genre.destroy
    redirect_to movie_genres_url, notice: "Movie genre was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_genre
      @movie_genre = MovieGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_genre_params
      params.require(:movie_genre).permit(:movie_id, :genre_id)
    end
end
