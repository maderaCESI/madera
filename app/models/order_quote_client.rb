class OrderQuoteClient < ActiveRecord::Base
    has_and_belongs_to_many :project_modular_houses
    belongs_to :payment
end