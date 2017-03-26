class Cladding < ActiveRecord::Base
    has_many :modulus
    
    validates :thicknessCladdings, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                       
    validates :priceCladdings, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}                     
  
    validates :claddingStock, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
end