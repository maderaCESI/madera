class ModulusController < ApplicationController
  
  before_action :set_modulu, only: [:update, :show, :edit, :destroy]
  authorize_resource
  
  def index
    @modulus = Modulu.all
  end

  def show
  end

  def update
    @modulu.update(modulu_params)
    redirect_to modulus_path, success: 'Le module a bien été modifié'
  end

  def destroy
    @modulu.destroy
    redirect_to modulus_path, success: 'Le module a bien été supprimé'
  end

  def new
    @modulu = Modulu.new
  end

  def edit
  end

  def create
    @modulu = Modulu.create(modulu_params)
    redirect_to modulus_path, success: 'Le module a bien été créé'
  end
  
  private
  def modulu_params
      params.require(:modulu).permit(:modulusName, :modulusNature, :modulusHeight, :modulusLength,
      :mdSection, :mdHeight, :mdLength, :maSection, :maHeight, :maLength, :maeSection, :maeHeight, :maeLength, :masSection,
      :masHeight, :masLength, :insulating_id, :cladding_id, :unitUse_id, :moduluStock, :priceTotal)
  end
    
  def set_modulu
    @modulu = Modulu.find(params[:id])
  end
end
