class ScaleModularHouse < ActiveRecord::Base
    belongs_to :project_modular_house
    belongs_to :cctp
    belongs_to :calculation_rule
    has_and_belongs_to_many :modulus
end