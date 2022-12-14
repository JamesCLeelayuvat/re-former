class User < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :password, presence: true, length: {minimum: 8}
end
