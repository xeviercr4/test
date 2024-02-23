class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]

  # GET /movies
  def index
     search
  end

  # GET /movies/1
  def show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie, notice: "Movie was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: "Movie was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
    redirect_to movies_url, notice: "Movie was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.require(:movie).permit(:title, :budget, :homepage, :overview, :popularity, :release_date, :revenue, :runtime, :movie_status, :tagline, :vote_average, :vote_count)
    end

    def search

      if params.has_key?(:criteria)
         case params[:criteria]
         when "Name"
           @movies = Movie.includes([movie_genres: :genre], [movie_languages: :language], [movie_casts: :person], [movie_companies: :production_company]).where(["title LIKE ?", "%#{params[:search]}"]).page(params[:page])
         when "Gender"
           @movies = Movie.includes([movie_genres: :genre], [movie_languages: :language], [movie_casts: :person], [movie_companies: :production_company]).joins(movie_genres: :genre).where(["genre_name LIKE ?", "%#{params[:search]}"]).distinct(:title).page(params[:page])
         when "Language"
           @movies = Movie.includes([movie_genres: :genre], [movie_languages: :language], [movie_casts: :person], [movie_companies: :production_company]).joins(movie_languages: :language).where(["language_name LIKE ?", "%#{params[:search]}"]).distinct(:title).page(params[:page])
         when "Movie Cast"
           @movies = Movie.includes([movie_genres: :genre], [movie_languages: :language], [movie_casts: :person], [movie_companies: :production_company]).joins(movie_casts: :person).where(["person_name LIKE ?", "%#{params[:search]}"]).distinct(:title).page(params[:page])
         else
           @movies = Movie.all.includes([movie_genres: :genre], [movie_languages: :language], [movie_casts: :person], [movie_companies: :production_company]).page(params[:page])
         end
      else
        @movies = Movie.all.includes([movie_genres: :genre], [movie_languages: :language], [movie_casts: :person], [movie_companies: :production_company]).page(params[:page])
      end

      @movies
    end


end
