class Printer < ApplicationRecord
  belongs_to :user
  validates :price, presence: true
  validates :model, presence: true
end
