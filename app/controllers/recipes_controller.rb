class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :show, :update]
  before_action :set_collections, only: [:edit, :show, :update]

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

  def set_collections
    @cuisines = Cuisine.all
    @types = Type.all
  end

  def recipe_params
    params.require(:recipe)
          .permit(:name, :cuisine_id, :type_id, :food_preferences, :servings,
                  :prepare_time, :difficulty, :ingredients, :directions,
                  :image)
  end
end
