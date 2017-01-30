class UniteUsesController < ApplicationController
  
  before_action :set_unite, only: [:update, :show, :edit, :destroy]
  authorize_resource
    
  def index
    @unites = UniteUse.all
  end

  def show
  end

  def update
    @unite.update(unite_params)
    redirect_to unite_uses_path, success: 'Le unite_use a bien été modifié'
  end

  def destroy
    @unite.destroy
    redirect_to unite_uses_path, success: 'Le unite_use a bien été supprimé'
  end

  def new
     @unite = UniteUse.new
  end

  def edit
    
  end

  def create
    @unite = UniteUse.create(unite_params)
    redirect_to unite_uses_path, success: 'Le unite_use a bien été créé'
  end
  
  private
    
    def unite_params
      params.require(:unite_use).permit(:unitUseName)
    end
    
    def set_client
      @unite = UniteUse.find(params[:id])
    end
end
