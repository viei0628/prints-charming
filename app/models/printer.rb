class Printer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  validates :price, presence: true
  validates :model, :photo, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
end
