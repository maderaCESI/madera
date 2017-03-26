class FamilyComponent < ActiveRecord::Base
    has_many :components
    
    validates :familyComponentName, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
end