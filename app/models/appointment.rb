class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :facility

  validates :date, presence: true
  validates :city, presence: true
end