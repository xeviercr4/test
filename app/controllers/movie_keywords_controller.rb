class MovieKeywordsController < ApplicationController
  before_action :set_movie_keyword, only: %i[ show edit update destroy ]

  # GET /movie_keywords
  def index
    @movie_keywords = MovieKeyword.all
  end

  # GET /movie_keywords/1
  def show
  end

  # GET /movie_keywords/new
  def new
    @movie_keyword = MovieKeyword.new
  end

  # GET /movie_keywords/1/edit
  def edit
  end

  # POST /movie_keywords
  def create
    @movie_keyword = MovieKeyword.new(movie_keyword_params)

    if @movie_keyword.save
      redirect_to @movie_keyword, notice: "Movie keyword was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_keywords/1
  def update
    if @movie_keyword.update(movie_keyword_params)
      redirect_to @movie_keyword, notice: "Movie keyword was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /movie_keywords/1
  def destroy
    @movie_keyword.destroy
    redirect_to movie_keywords_url, notice: "Movie keyword was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_keyword
      @movie_keyword = MovieKeyword.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_keyword_params
      params.require(:movie_keyword).permit(:movie_id, :keyword_id)
    end
end
