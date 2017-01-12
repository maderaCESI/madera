class ComponentsController < ApplicationController
  def index
    @components = Component.includes(:provider, :unite_use).all
  end

  def show
    @component = Component.find(params[:id])
  end

  def update
    @component = Component.find(params[:id])
    @component.update(component_params)
        
    redirect_to components_path, success: 'Le composant a bien été modifié'
  end

  def destroy
    @component = Component.find(params[:id])
    @component.destroy
    redirect_to components_path, success: 'Le composant a bien été supprimé'
  end

  def new
    @component = Component.new
  end

  def edit
    @component = Component.find(params[:id])
  end

  def create
    @component = Component.create(component_params)
    redirect_to components_path, success: 'Le composant a bien été créé'
  end
  
  private
  def component_params
    params.require(:component).permit(:componentName, :componentNature, :componentSection, :componentThickness, :componentLength, :componentWidth, :provider_id, :unitUse_id)
  end
end
