class Dashbord < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
