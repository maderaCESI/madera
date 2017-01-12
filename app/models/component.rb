class Component < ActiveRecord::Base
    belongs_to :family_component
    belongs_to :provider
    belongs_to :unite_use
    has_and_belongs_to_many :modulus
end