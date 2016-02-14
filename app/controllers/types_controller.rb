class TypesController < ApplicationController
  before_action :set_type, only: [:edit, :show, :update]

  def show
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.new(type_params)
    if @type.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_type
    @type = Type.find(params[:id])
  end

  def type_params
    params.require(:type)
          .permit(:name)
  end
end
