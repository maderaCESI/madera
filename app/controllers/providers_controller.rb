class ProvidersController < ApplicationController
  def index
    @providers = Provider.all
  end

  def show
    @provider = Provider.find(params[:id])
  end

  def update
    @provider = Provider.find(params[:id])
    @provider.update(provider_params)
        
    redirect_to providers_path, success: 'Le fournisseur a bien été modifié'
  end

  def destroy
    @provider = Provider.find(params[:id])
    @provider.destroy
    redirect_to providers_path, success: 'Le fournisseur a bien été supprimé'
  end

  def new
    @provider = Provider.new
  end

  def edit
    @provider = Provider.find(params[:id])
  end

  def create
    @provider = Provider.create(provider_params)
    redirect_to providers_path, success: 'Le founisseur a bien été créé'
  end
  
  private
  def provider_params
    params.require(:provider).permit(:providerName, :streetNumber, :streetName, :pc, :cityName, :phonenumber, :email)
  end
end
