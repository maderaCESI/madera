class ProjectModularHousesController < ApplicationController
  
  before_action :set_project, only: [:update, :show, :edit, :destroy]
  authorize_resource
  
  def index
    @projets = ProjectModularHouse.includes(:client, :user, :scale_modular_house).all
  end

  def show
  end

  def update
    @projet.update(projet_params)
    redirect_to project_modular_houses_path, success: 'Le projet a bien été modifié'
  end
  
  def destroy
    @projet.destroy
    redirect_to project_modular_houses_path, success: 'Le projet a bien été supprimé'
  end

  def new
    @projet = ProjectModularHouse.new
  end

  def edit
  end

  def create
    @projet = ProjectModularHouse.create(projet_params)
    redirect_to project_modular_houses_path, success: 'Le projet a bien été crée'
  end
  
  private
  
  def projet_params
    params.require(:project_modular_house).permit(:projectName, :client_id, :user_id, :scale_modular_house_id)
  end
  
  def set_project
    @projet = ProjectModularHouse.find(params[:id])
  end
  
end
