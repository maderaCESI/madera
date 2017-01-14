class ClientsController < ApplicationController
    
    before_action :set_client, only: [:update, :show, :edit, :destroy]
    authorize_resource
    
    def index
        @clients = Client.all
    end
    
    def show
    end
    
    def update
        @client.update(client_params)
        redirect_to clients_path, success: 'Le client a bien été modifié'
    end
    
    def destroy
        @client.destroy
        redirect_to clients_path, success: 'Le client a bien été supprimé'
    end
    
    def new
        @client = Client.new
    end
    
    def edit
    end
    
    def create
        @client = Client.create(client_params)
        redirect_to clients_path, success: 'Le client a bien été créé'
    end
    
    private
    
     def client_params
         params.require(:client).permit(:clientName, :firstNameClient, :streetNumber, :streetName, :pc, :cityName, :phonenumber, :email)
     end
    
    def set_client
        @client = Client.find(params[:id])
    end
    
end
