class PreferencesController < ApplicationController
  before_action :set_preference, only: [:show]

  def show
  end

  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)
    if @preference.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_preference
    @preference = Preference.find(params[:id])
  end

  def preference_params
    params.require(:preference)
          .permit(:name)
  end
end
