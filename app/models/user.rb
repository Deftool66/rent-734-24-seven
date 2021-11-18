class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :offers
  has_many :requests_as_owner, through: :offers, source: :bookings
  has_one_attached :photo
  # has_many :bookings_as_owner, through: :offers, source: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, presence: true
end
