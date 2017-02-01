class OrderQuoteClient < ActiveRecord::Base
    belongs_to :project_modular_house
    belongs_to :payment
end