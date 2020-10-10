class Appointment < ApplicationRecord

  validates :date, presence: true
  validates :city, presence: true
end