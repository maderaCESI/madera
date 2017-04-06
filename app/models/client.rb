class Client < ActiveRecord::Base
    has_many :project_modular_houses
    has_many :order_quote_clients
    
    validates :clientName, presence: true
                       
    validates :firstNameClient, presence: true                     
  
    validates :phonenumber, presence: true
                       
    validates :email, presence: true
end