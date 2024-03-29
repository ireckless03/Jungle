class User < ApplicationRecord


  has_secure_password 
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :password, length: { minimum: 6 }
  validates_confirmation_of :password


  def self.authenticate_with_credentials(email,password)
    user = User.find_by_email(email.strip.downcase)
    if user && user.authenticate(password)
     user
    end
  end

end
