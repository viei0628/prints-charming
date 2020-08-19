class Printer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :price, presence: true
  validates :model, :photo, presence: true
  has_one_attached :photo
end
