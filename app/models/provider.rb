class Provider < ActiveRecord::Base
    has_many :components
    
    validates :providerName, presence: true
  
    validates :phonenumber, presence: true
                       
    validates :email, presence: true
end