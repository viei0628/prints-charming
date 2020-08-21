class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :printer
  has_many :notifications
  validates :meeting_time, presence: true
  validates :status, presence: true
  validates :status, inclusion: {in: ["Pending", "Accepted", "Rejected", "Completed"]}
end
