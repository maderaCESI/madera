class UniteUse < ActiveRecord::Base
    has_many :Modulus
    has_many :Component
end