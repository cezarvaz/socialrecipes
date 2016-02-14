class HomeController < ApplicationController
  def index
    @recipes = Recipe.all
    @cuisines = Cuisine.all
    @types = Type.all
    @preferences = Preference.all
  end
end
