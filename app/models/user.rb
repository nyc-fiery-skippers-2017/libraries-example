class User < ApplicationRecord
  # Remember to create a migration!
  validates :username, :email, presence: true
  validates :password, length: {minimum:  6}
  #
  has_secure_password
  
  # def password
  #   @password ||= BCrypt::Password.new(self.password_digest)
  # end
  #
  # def password=(value)
  #   @password = value
  #   self.password_digest = BCrypt::Password.create(value)
  # end
  #
  #
  # def authenticate(input_password)
  #   self.password == input_password
  # end
end
