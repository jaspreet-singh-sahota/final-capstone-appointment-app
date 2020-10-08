class User < ApplicationRecord
  has_secure_password

  VALID_EMAIL_ID = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :name, presence: true,
   length: { minimum: 3, maximum: 30 }
  validates :email, presence: true,
   length: { minimum: 10, maixmum: 80 },
    format: { with: VALID_EMAIL_ID }
end

