class Insulating < ActiveRecord::Base

    validates :insulatingName, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                       
    validates :insulatingThickness, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}                     
  
    validates :priceInsulating, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                      
    validates :insulatingStock, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
end