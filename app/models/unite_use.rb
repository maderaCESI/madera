class UniteUse < ActiveRecord::Base
    has_many :modulus
    has_many :components
end