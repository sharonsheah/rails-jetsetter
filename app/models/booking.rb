class Booking < ApplicationRecord
  belongs_to :jet
  belongs_to :user
end
