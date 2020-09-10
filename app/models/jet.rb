class Jet < ApplicationRecord
  belongs_to :user
  has_many :bookings
<<<<<<< HEAD
  geocoded_by :origin
  after_validation :geocode, if: :will_save_change_to_origin?
=======
  has_one_attached :photo
>>>>>>> 964ea07423b18ea5c1d1b22ed8cdca4c8be416f1

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 3 }
  validates :capacity, :price, presence: true, numericality: { only_integer: true }
<<<<<<< HEAD
  validates :pilot_name, :origin, presence: true
=======
  validates :pilot_name, :origin, presence: true 
  # validates :photo, presence: true
>>>>>>> 964ea07423b18ea5c1d1b22ed8cdca4c8be416f1
end
