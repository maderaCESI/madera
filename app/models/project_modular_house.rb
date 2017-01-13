class ProjectModularHouse < ActiveRecord::Base
    belongs_to :client
    belongs_to :user
    belongs_to :scale_modular_house
    has_and_belongs_to_many :order_quote_clients
end