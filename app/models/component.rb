class Component < ActiveRecord::Base
    belongs_to :family_component
    belongs_to :provider
    belongs_to :unite_use
    has_and_belongs_to_many :modulus
    
     validates :componentName, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                       
    validates :componentNature, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}                     
  
    validates :priceComponent, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                       
    validates :componentStock, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
end