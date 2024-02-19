class MovieCrewsController < ApplicationController
  before_action :set_movie_crew, only: %i[ show edit update destroy ]

  # GET /movie_crews
  def index
    @movie_crews = MovieCrew.all
  end

  # GET /movie_crews/1
  def show
  end

  # GET /movie_crews/new
  def new
    @movie_crew = MovieCrew.new
  end

  # GET /movie_crews/1/edit
  def edit
  end

  # POST /movie_crews
  def create
    @movie_crew = MovieCrew.new(movie_crew_params)

    if @movie_crew.save
      redirect_to @movie_crew, notice: "Movie crew was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_crews/1
  def update
    if @movie_crew.update(movie_crew_params)
      redirect_to @movie_crew, notice: "Movie crew was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /movie_crews/1
  def destroy
    @movie_crew.destroy
    redirect_to movie_crews_url, notice: "Movie crew was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_crew
      @movie_crew = MovieCrew.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_crew_params
      params.require(:movie_crew).permit(:movie_id, :person_id, :department_id, :job)
    end
end
