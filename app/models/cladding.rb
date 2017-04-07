class Cladding < ActiveRecord::Base
    has_many :modulus
    
    validates :thicknessCladdings, presence: true
                       
    validates :priceCladdings, presence: true                    
  
    validates :claddingStock, presence: true
end