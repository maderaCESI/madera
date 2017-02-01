class User < ApplicationRecord
  
  has_many :project_modular_houses
  
  attr_accessor :login
  validates :firstname, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                       
  validates :lastname, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}                     
  
  validates :username, presence: true, 
                       uniqueness: {case_sensitive: false}, 
                       format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
                       
  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable
         
         
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    
    if login = conditions.delete(:login)
      where(conditions.to_hash).where("lower(username) = :value OR lower(email) = :value", value: login.downcase).first
    else
      where(conditions.to_hash).first
    end
  end
  
  def is_admin?
    self.role == 'admin'
  end
  
  def is_commercial?
    self.role == 'commercial'
  end
  
  def is_etude?
    self.role == 'etude'
  end
  
end

