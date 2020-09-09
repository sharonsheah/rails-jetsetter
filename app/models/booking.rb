class Booking < ApplicationRecord
  belongs_to :jet
  belongs_to :user

  validates :passengers, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :destination, presence: true
  validates :total_price, presence: true
end
