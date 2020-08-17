class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :printer
  validates :meeting_time, presence: true
  validates :status, presence: true
end
