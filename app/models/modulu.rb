class Modulu < ActiveRecord::Base
    belongs_to :Insulating
    belongs_to :Cladding
    belongs_to :Unite_use
    has_and_belongs_to_many :Components
    has_and_belongs_to_many :Scale_modular_houses
end