class Printer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :price, presence: true
  validates :model, presence: true
end
