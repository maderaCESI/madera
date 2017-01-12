class ScaleModularHousesController < ApplicationController
  def index
    @scaleModularHouses = ScaleModularHouse.all
  end

  def show
     @scaleModularHouse = ScaleModularHouse.find(params[:id])
  end

  def update
    @scaleModularHouse = ScaleModularHouse.find(params[:id])
    @scaleModularHouse.ScaleModularHouse(scaleModularHouse_params)
        
    redirect_to scale_modular_houses_path, success: 'La gamme a bien été modifiée'
  end

  def destroy
    @scaleModularHouse = ScaleModularHouse.find(params[:id])
    @scaleModularHouse.destroy
    redirect_to scale_modular_houses_path, success: 'La gamme a bien été supprimée'
  end

  def new
    @scaleModularHouse = ScaleModularHouse.new
  end

  def edit
    @scaleModularHouse = ScaleModularHouse.find(params[:id])
  end

  def create
    @scaleModularHouse = ScaleModularHouse.create(scaleModularHouse_params)
    redirect_to scale_modular_houses_path, success: 'La gamme a bien été créée'
  end
  
  private
    
  def scaleModularHouse_params
    params.require(:scale_modular_house).permit(:scaleName, :exteriorFinish, :coverType, :woodWorkingQuality)
  end
end
