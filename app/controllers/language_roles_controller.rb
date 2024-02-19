class LanguageRolesController < ApplicationController
  before_action :set_language_role, only: %i[ show edit update destroy ]

  # GET /language_roles
  def index
    @language_roles = LanguageRole.all
  end

  # GET /language_roles/1
  def show
  end

  # GET /language_roles/new
  def new
    @language_role = LanguageRole.new
  end

  # GET /language_roles/1/edit
  def edit
  end

  # POST /language_roles
  def create
    @language_role = LanguageRole.new(language_role_params)

    if @language_role.save
      redirect_to @language_role, notice: "Language role was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /language_roles/1
  def update
    if @language_role.update(language_role_params)
      redirect_to @language_role, notice: "Language role was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /language_roles/1
  def destroy
    @language_role.destroy
    redirect_to language_roles_url, notice: "Language role was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language_role
      @language_role = LanguageRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def language_role_params
      params.require(:language_role).permit(:language_role)
    end
end
