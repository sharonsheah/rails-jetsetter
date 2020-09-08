class Jet < ApplicationRecord
  belongs_to :user

  validates :name, :description, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :capacity, :price, presence: true, numericality: { only_integer: true }
  validates :pilot_name, :origin, presence: true 
end
