class ScaleModularHousesController < ApplicationController
  
  before_action :set_scale, only: [:update, :show, :edit, :destroy]
  authorize_resource
  
  def index
    @scaleModularHouses = ScaleModularHouse.all
  end

  def show
  end

  def update
    @scaleModularHouse.ScaleModularHouse(scaleModularHouse_params)
    redirect_to scale_modular_houses_path, success: 'La gamme a bien été modifiée'
  end

  def destroy
    @scaleModularHouse.destroy
    redirect_to scale_modular_houses_path, success: 'La gamme a bien été supprimée'
  end

  def new
    @scaleModularHouse = ScaleModularHouse.new
  end

  def edit
  end

  def create
    @scaleModularHouse = ScaleModularHouse.create(scaleModularHouse_params)
    redirect_to scale_modular_houses_path, success: 'La gamme a bien été créée'
  end
  
  private
    
  def scaleModularHouse_params
    params.require(:scale_modular_house).permit(:scaleName, :exteriorFinish, :coverType, :woodWorkingQuality)
  end
  
  def set_scale
    @scaleModularHouse = ScaleModularHouse.find(params[:id])
  end
end
