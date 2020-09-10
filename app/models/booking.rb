class Booking < ApplicationRecord
  STATUS = ["Unconfirmed", "Confirmed", "Rejected", "Cancelled"]
  belongs_to :jet
  belongs_to :user

  validates :passengers, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :destination, presence: true
  validates :total_price, presence: true
  validates :booking_status, inclusion: { in: Booking::STATUS }
end
