class CuisineController < ApplicationController
  before_action :set_cuisine, only: [:edit, :show, :update]

  def show
  end

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      redirect_to @cuisine
    else
      render :new
    end
  end

  private

  def set_cuisine
    @cuisine = Cuisine.find(params[:id])
  end

  def cuisine_params
    params.require(:cuisine)
          .permit(:name)
  end
end