class Printer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :price, presence: true
  validates :model, :photo, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
end
