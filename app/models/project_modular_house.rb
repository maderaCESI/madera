class ProjectModularHouse < ActiveRecord::Base
    belongs_to :Client
    belongs_to :User
    has_many :Scale_modular_house
    has_and_belongs_to_many :Order_quote_clients
end