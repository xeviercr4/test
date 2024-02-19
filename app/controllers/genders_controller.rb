class GendersController < ApplicationController
  before_action :set_gender, only: %i[ show edit update destroy ]

  # GET /genders
  def index
    @genders = Gender.all
  end

  # GET /genders/1
  def show
  end

  # GET /genders/new
  def new
    @gender = Gender.new
  end

  # GET /genders/1/edit
  def edit
  end

  # POST /genders
  def create
    @gender = Gender.new(gender_params)

    if @gender.save
      redirect_to @gender, notice: "Gender was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /genders/1
  def update
    if @gender.update(gender_params)
      redirect_to @gender, notice: "Gender was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /genders/1
  def destroy
    @gender.destroy
    redirect_to genders_url, notice: "Gender was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gender
      @gender = Gender.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gender_params
      params.require(:gender).permit(:gender)
    end
end
