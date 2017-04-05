class OrderQuoteClient < ActiveRecord::Base
    belongs_to :project_modular_house
    belongs_to :payment
    belongs_to :client
    belongs_to :scale_modular_house
    has_and_belongs_to_many :modulus, dependent: :destroy
    accepts_nested_attributes_for :modulus, :allow_destroy => true

    validates :orderName, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
end