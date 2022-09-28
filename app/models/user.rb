class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :articles
  validates :user_name, uniqueness: { case_sensitive: false }, presence: true, length: {minimum: 3, maximum: 25}
  validates :email, uniqueness: true, presence: true, length: {maximum: 105}, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_secure_password
end
