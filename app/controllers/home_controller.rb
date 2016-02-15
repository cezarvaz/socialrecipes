class HomeController < ApplicationController
  def index
    @recipes = Recipe.all.order(created_at: :desc).limit(5)
    @cuisines = Cuisine.all
    @types = Type.all
    @preferences = Preference.all
  end
end
