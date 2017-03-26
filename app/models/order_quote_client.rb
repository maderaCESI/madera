class OrderQuoteClient < ActiveRecord::Base
    belongs_to :project_modular_house
    belongs_to :payment
    belongs_to :client
    belongs_to :scale_modular_house
    has_and_belongs_to_many :modulus
end