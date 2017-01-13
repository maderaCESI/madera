class FamilyComponentsController < ApplicationController
  def index
    @family_components = FamilyComponent.all
  end

  def show
    @family_component = FamilyComponent.find(params[:id])
  end

  def update
    @family_component = FamilyComponent.find(params[:id])
    @family_component.update(family_component_params)
        
    redirect_to family_components_path, success: 'La famille a bien été modifiée'
  end

  def destroy
    @family_component = FamilyComponent.find(params[:id])
    @family_component.destroy
    redirect_to family_components_path, success: 'La famille a bien été supprimée'
  end

  def new
    @family_component = FamilyComponent.new
  end

  def create
    @family_component = FamilyComponent.create(family_component_params)
    redirect_to family_components_path, success: 'La famille a bien été créée'
   
  end

  def edit
    @family_component = FamilyComponent.find(params[:id])
  end
  
  private 
  def family_component_params
    params.require(:family_component).permit(:familyComponentName)
  end
end
