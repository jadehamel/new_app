class FoodWeeksController < ApplicationController
  before_action :set_food_week, only: [:show, :edit, :update, :destroy]

  # GET /food_weeks
  # GET /food_weeks.json
  def index
    @food_weeks = FoodWeek.all
  end

  # GET /food_weeks/1
  # GET /food_weeks/1.json
  def show
  end

  # GET /food_weeks/new
  def new
    @food_week = FoodWeek.new
  end

  # GET /food_weeks/1/edit
  def edit
  end

  # POST /food_weeks
  # POST /food_weeks.json
  def create
    @food_week = FoodWeek.new(food_week_params)

    respond_to do |format|
      if @food_week.save
        format.html { redirect_to @food_week, notice: 'Food week was successfully created.' }
        format.json { render :show, status: :created, location: @food_week }
      else
        format.html { render :new }
        format.json { render json: @food_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_weeks/1
  # PATCH/PUT /food_weeks/1.json
  def update
    respond_to do |format|
      if @food_week.update(food_week_params)
        format.html { redirect_to @food_week, notice: 'Food week was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_week }
      else
        format.html { render :edit }
        format.json { render json: @food_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_weeks/1
  # DELETE /food_weeks/1.json
  def destroy
    @food_week.destroy
    respond_to do |format|
      format.html { redirect_to food_weeks_url, notice: 'Food week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_week
      @food_week = FoodWeek.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_week_params
      params.require(:food_week).permit(:food_id, :soup_id)
    end
end
