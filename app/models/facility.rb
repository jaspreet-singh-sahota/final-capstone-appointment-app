class Facility < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments

  validates :name, presence: true, uniqueness: true,
   length: { minimum: 2, maximum: 30 }
  validates :image_url, presence: true, uniqueness: true,
    length: { minimum: 2}
  validates :brief_description, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :detailed_description, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :free_trial, presence: true, length: { minimum: 2, maximum: 20 }
  validates :three_months_package, presence: true, length: { minimum: 2, maximum: 20}
  validates :six_months_package, presence: true, length: { minimum: 2, maximum: 20}
  validates :annual_package, presence: true, length: { minimum: 2, maximum: 20 }
end
