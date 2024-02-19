class KeywordsController < ApplicationController
  before_action :set_keyword, only: %i[ show edit update destroy ]

  # GET /keywords
  def index
    @keywords = Keyword.all
  end

  # GET /keywords/1
  def show
  end

  # GET /keywords/new
  def new
    @keyword = Keyword.new
  end

  # GET /keywords/1/edit
  def edit
  end

  # POST /keywords
  def create
    @keyword = Keyword.new(keyword_params)

    if @keyword.save
      redirect_to @keyword, notice: "Keyword was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /keywords/1
  def update
    if @keyword.update(keyword_params)
      redirect_to @keyword, notice: "Keyword was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /keywords/1
  def destroy
    @keyword.destroy
    redirect_to keywords_url, notice: "Keyword was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keyword
      @keyword = Keyword.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def keyword_params
      params.require(:keyword).permit(:keyword_name)
    end
end
