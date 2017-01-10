class ProjectModularHousesController < ApplicationController
  def index
    @projets = ProjectModularHouse.all
  end

  def show
    @projet = ProjectModularHouse.find(params[:id])
  end

  def update
    @projet = ProjectModularHouse.find(params[:id])
    @projet.update(projet_params)
        
    redirect_to project_modular_houses_path
  end
  
  def destroy
    @projet = ProjectModularHouse.find(params[:id])
    @projet.destroy
    redirect_to project_modular_houses_path
  end

  def new
    @projet = ProjectModularHouse.new
  end

  def edit
    @projet = ProjectModularHouse.find(params[:id])
  end

  def create
    @projet = ProjectModularHouse.create(projet_params)
    redirect_to project_modular_houses_path
  end
  
  private
  
  def projet_params
    params.require(:project_modular_house).permit(:projectName, :client_id)
    
  end
end
