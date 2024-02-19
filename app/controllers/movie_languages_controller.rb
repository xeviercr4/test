class MovieLanguagesController < ApplicationController
  before_action :set_movie_language, only: %i[ show edit update destroy ]

  # GET /movie_languages
  def index
    @movie_languages = MovieLanguage.all
  end

  # GET /movie_languages/1
  def show
  end

  # GET /movie_languages/new
  def new
    @movie_language = MovieLanguage.new
  end

  # GET /movie_languages/1/edit
  def edit
  end

  # POST /movie_languages
  def create
    @movie_language = MovieLanguage.new(movie_language_params)

    if @movie_language.save
      redirect_to @movie_language, notice: "Movie language was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_languages/1
  def update
    if @movie_language.update(movie_language_params)
      redirect_to @movie_language, notice: "Movie language was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /movie_languages/1
  def destroy
    @movie_language.destroy
    redirect_to movie_languages_url, notice: "Movie language was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_language
      @movie_language = MovieLanguage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_language_params
      params.require(:movie_language).permit(:movie_id, :language_id, :language_role_id)
    end
end
