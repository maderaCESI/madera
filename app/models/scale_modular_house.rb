class ScaleModularHouse < ActiveRecord::Base
    has_many :project_modular_houses
    belongs_to :cctp
    belongs_to :calculation_rule
    has_and_belongs_to_many :modulus
    has_many :order_quote_clients
    
    validates :scaleName, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                       
    validates :exteriorFinish, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}                     
  
    validates :coverType, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                       
    validates :price, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
end