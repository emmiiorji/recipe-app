class RecipeFoodsController < ApplicationController
  before_action :set_recipe_food, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /recipe_foods or /recipe_foods.json
  def index
    @recipe_foods = RecipeFood.all
  end

  # GET /recipe_foods/1 or /recipe_foods/1.json
  def show
  end

  # GET /recipe_foods/new
  def new
    @recipe_food = RecipeFood.new
  end

  # GET /recipe_foods/1/edit
  def edit
  end

  # POST /recipe_foods or /recipe_foods.json
  def create
    @recipe_food = RecipeFood.new(recipe_food_params)
  #  recipe = Recipe.find(params[:recipe_id])
  #  @recipe_food = RecipeFood.new(params.require(:recipe_food).permit(:quantity, :recipe, :food_id))
  #  @recipe_food.recipe = recipe

    respond_to do |format|
      if @recipe_food.save
        #redirect_to recipe_foods_path
        format.html do
          redirect_to user_recipe_path(current_user, recipe), notice: 'Recipe food was successfully created.'
        end
        format.json { render :show, status: :created, location: @recipe_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_foods/1 or /recipe_foods/1.json
  def update
    respond_to do |format|
      if @recipe_food.update(recipe_food_params)
        format.html { redirect_to recipe_food_url(@recipe_food), notice: "Recipe food was successfully updated." }
        format.json { render :show, status: :ok, location: @recipe_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipe_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_foods/1 or /recipe_foods/1.json
  def destroy
    @recipe_foods = RecipeFood.find(params[:id])
    @recipe_food.destroy
    redirect_to recipe_foods_path
  #  respond_to do |format|
  #    format.html { redirect_to recipe_foods_url, notice: "Recipe food was successfully destroyed." }
  #   format.json { head :no_content }
  #  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_food
      @recipe_food = RecipeFood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe_food_params
      params.require(:recipe_food).permit(:quantity, :recipe_id, :food_id)
    end
end
