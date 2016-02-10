class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :show, :update]

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe)
          .permit(:name, :cuisine, :type_of_food, :food_preferences, :servings,
                  :prepare_time, :difficulty, :ingredients, :directions,
                  :image_file_name)
  end
end
