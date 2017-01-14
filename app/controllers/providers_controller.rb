class ProvidersController < ApplicationController
  
  before_action :set_provider, only: [:update, :show, :edit, :destroy]
  authorize_resource
  
  def index
    @providers = Provider.all
  end

  def show
  end

  def update
    @provider.update(provider_params)
    redirect_to providers_path, success: 'Le fournisseur a bien été modifié'
  end

  def destroy
    @provider.destroy
    redirect_to providers_path, success: 'Le fournisseur a bien été supprimé'
  end

  def new
    @provider = Provider.new
  end

  def edit
  end

  def create
    @provider = Provider.create(provider_params)
    redirect_to providers_path, success: 'Le founisseur a bien été créé'
  end
  
  private
  def provider_params
    params.require(:provider).permit(:providerName, :streetNumber, :streetName, :pc, :cityName, :phonenumber, :email)
  end
  
  def set_provider
    @provider = Provider.find(params[:id])
  end
end
