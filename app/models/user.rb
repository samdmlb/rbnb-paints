class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :paints

  validates :first_name, presence: true, length: { minimum: 2, maximum: 15 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 20 }
end
