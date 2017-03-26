class ProjectModularHouse < ActiveRecord::Base
    belongs_to :client
    belongs_to :user
    belongs_to :scale_modular_house
    has_many :order_quote_clients
    
    validates :projectName, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
    
    validates :client_id, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                       
    validates :user_id, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}                     
  
    validates :scale_modular_house_id, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                      
end