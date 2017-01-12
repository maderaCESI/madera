class ProjectModularHouse < ActiveRecord::Base
    belongs_to :client
    belongs_to :user
    has_many :scale_modular_houses
    has_and_belongs_to_many :order_quote_clients
end