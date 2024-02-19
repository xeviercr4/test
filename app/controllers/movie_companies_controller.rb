class MovieCompaniesController < ApplicationController
  before_action :set_movie_company, only: %i[ show edit update destroy ]

  # GET /movie_companies
  def index
    @movie_companies = MovieCompany.all
  end

  # GET /movie_companies/1
  def show
  end

  # GET /movie_companies/new
  def new
    @movie_company = MovieCompany.new
  end

  # GET /movie_companies/1/edit
  def edit
  end

  # POST /movie_companies
  def create
    @movie_company = MovieCompany.new(movie_company_params)

    if @movie_company.save
      redirect_to @movie_company, notice: "Movie company was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_companies/1
  def update
    if @movie_company.update(movie_company_params)
      redirect_to @movie_company, notice: "Movie company was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /movie_companies/1
  def destroy
    @movie_company.destroy
    redirect_to movie_companies_url, notice: "Movie company was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_company
      @movie_company = MovieCompany.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_company_params
      params.require(:movie_company).permit(:movie_id, :company_id)
    end
end
