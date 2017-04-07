class Insulating < ActiveRecord::Base

    validates :insulatingName, presence: true
                       
    validates :insulatingThickness, presence: true                 
  
    validates :priceInsulating, presence: true
                      
    validates :insulatingStock, presence: true
end