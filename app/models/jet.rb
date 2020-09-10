class Jet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  geocoded_by :origin
  after_validation :geocode, if: :will_save_change_to_origin?

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 3 }
  validates :capacity, :price, presence: true, numericality: { only_integer: true }
  validates :pilot_name, :origin, presence: true
end
