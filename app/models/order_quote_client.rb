class OrderQuoteClient < ActiveRecord::Base
    has_and_belongs_to_many :Project_modular_houses
    belongs_to :sPayment
end