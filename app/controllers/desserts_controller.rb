class DessertsController < ApplicationController
  before_action :set_dessert, only: [:show, :edit, :update, :destroy]

  # GET /desserts
  # GET /desserts.json
  def index
    @desserts = Dessert.all
  end

  # GET /desserts/1
  # GET /desserts/1.json
  def show
  end

  # GET /desserts/new
  def new
    @dessert = Dessert.new
  end

  # GET /desserts/1/edit
  def edit
  end

  # POST /desserts
  # POST /desserts.json
  def create
    @dessert = Dessert.new(dessert_params)

    respond_to do |format|
      if @dessert.save
        format.html { redirect_to @dessert, notice: 'Dessert was successfully created.' }
        format.json { render :show, status: :created, location: @dessert }
      else
        format.html { render :new }
        format.json { render json: @dessert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desserts/1
  # PATCH/PUT /desserts/1.json
  def update
    respond_to do |format|
      if @dessert.update(dessert_params)
        format.html { redirect_to @dessert, notice: 'Dessert was successfully updated.' }
        format.json { render :show, status: :ok, location: @dessert }
      else
        format.html { render :edit }
        format.json { render json: @dessert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desserts/1
  # DELETE /desserts/1.json
  def destroy
    @dessert.destroy
    respond_to do |format|
      format.html { redirect_to desserts_url, notice: 'Dessert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dessert
      @dessert = Dessert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dessert_params
      params.require(:dessert).permit(:name, :description)
    end
end
