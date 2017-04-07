class ComponentsController < ApplicationController
  
  before_action :set_component, only: [:update, :show, :edit, :destroy]
  authorize_resource
  
  
  def index
    @components = Component.all
  end

  def show
  end

  def update
    @component.update(component_params)
        
    redirect_to components_path, success: 'Le composant a bien été modifié'
  end

  def destroy
    @component.destroy
    redirect_to components_path, success: 'Le composant a bien été supprimé'
  end

  def new
    @component = Component.new
  end

  def edit
  end

  def create
    @component = Component.create(component_params)
    redirect_to components_path, success: 'Le composant a bien été créé'
  end
  
  private
  def component_params
    params.require(:component).permit(:componentName, :componentNature, :componentSection, :componentThickness, :componentLength, :componentWidth, :family_component_id, :provider_id, :unite_use_id, :priceComponent, :componentStock)
  end
  
  def set_component
    @component = Component.find(params[:id])
  end
end
