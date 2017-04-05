class UniteUse < ActiveRecord::Base
    has_many :modulus
    validates :unitUseName, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
end