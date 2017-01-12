class ScaleModularHouse < ActiveRecord::Base
    belongs_to :Project_modular_house
    belongs_to :Cctp
    belongs_to :Calculation_rule
    has_and_belongs_to_many :Modulus
end