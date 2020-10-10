class User < ApplicationRecord
  has_secure_password

  has_many :appointments
  has_many :facilities, through: :appointments

  VALID_EMAIL_ID = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :username, presence: true, uniqueness: true,
   length: { minimum: 3, maximum: 30 }
  validates :email, presence: true, uniqueness: true,
   length: { minimum: 10, maixmum: 80 },
    format: { with: VALID_EMAIL_ID }
end

