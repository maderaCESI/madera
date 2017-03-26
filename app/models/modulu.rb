class Modulu < ActiveRecord::Base
    belongs_to :insulating
    belongs_to :cladding
    belongs_to :unite_use
    has_and_belongs_to_many :components
    has_and_belongs_to_many :scale_modular_houses
    has_and_belongs_to_many :order_quote_clients
    
    validates :modulusName, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                       
    validates :modulusNature, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}                     
end