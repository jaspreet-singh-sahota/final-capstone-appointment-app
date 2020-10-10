class Facility < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments

  validates :name, presence: true, uniqueness: true,
   length: { minimum: 2, maximum: 30 }
  validates :image_url, presence: true, uniqueness: true
  validates :brief_description, presence: true
  validates :detailed_description, presence: true
  validates :free_trial, presence: true
  validates :three_months_package, presence: true
  validates :six_months_package, presence: true
  validates :annual_package, presence: true
end
