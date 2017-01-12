class Payment < ActiveRecord::Base
    has_many :Order_quote_client
end