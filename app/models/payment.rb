class Payment < ActiveRecord::Base
    has_many :order_quote_clients
end