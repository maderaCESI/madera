class ScaleModularHouse < ActiveRecord::Base
    has_many :project_modular_houses
    belongs_to :cctp
    belongs_to :calculation_rule
    has_and_belongs_to_many :modulus
end