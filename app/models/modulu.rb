class Modulu < ActiveRecord::Base
    belongs_to :insulating
    belongs_to :cladding
    belongs_to :unite_use
    has_and_belongs_to_many :components
    has_and_belongs_to_many :scale_modular_houses
end