class User < ApplicationRecord
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  before_save { self.email.downcase! }

  validates :email,
            length: {maximum: 50},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: true,
            presence: true

  validates :password,
            length: {minimum: 8},
            presence: true
end