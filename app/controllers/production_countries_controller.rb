class ProductionCountriesController < ApplicationController
  before_action :set_production_country, only: %i[ show edit update destroy ]

  # GET /production_countries
  def index
    @production_countries = ProductionCountry.all
  end

  # GET /production_countries/1
  def show
  end

  # GET /production_countries/new
  def new
    @production_country = ProductionCountry.new
  end

  # GET /production_countries/1/edit
  def edit
  end

  # POST /production_countries
  def create
    @production_country = ProductionCountry.new(production_country_params)

    if @production_country.save
      redirect_to @production_country, notice: "Production country was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /production_countries/1
  def update
    if @production_country.update(production_country_params)
      redirect_to @production_country, notice: "Production country was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /production_countries/1
  def destroy
    @production_country.destroy
    redirect_to production_countries_url, notice: "Production country was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_country
      @production_country = ProductionCountry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def production_country_params
      params.require(:production_country).permit(:movie_id, :country_id)
    end
end
