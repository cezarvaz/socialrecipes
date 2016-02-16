class HomeController < ApplicationController
  def index
    @recipes = Recipe.last(20)
    @cuisines = Cuisine.all
    @types = Type.all
    @preferences = Preference.all
  end
end
