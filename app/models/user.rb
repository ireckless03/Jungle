class User < ApplicationRecord
  attr_accessor :first_name, :last_name, :email, :password, :password_confirmation

  has_secure_password 
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :password, length: { minimum: 6 }
  validates_confirmation_of :password
end
