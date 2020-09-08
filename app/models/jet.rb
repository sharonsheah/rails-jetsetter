class Jet < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :description, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :capacity, :price, presence: true, numericality: { only_integer: true }
  validates :pilot_name, :origin, presence: true 
end
