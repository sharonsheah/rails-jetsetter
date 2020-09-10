class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :jets, dependent: :destroy
  has_many :bookings
  has_one :dashboard
  has_one_attached :photo
  validates :first_name, presence: true, uniqueness: { scope: :last_name }
end
