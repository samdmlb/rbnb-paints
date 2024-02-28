class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :paints, dependent: :destroy

  has_many :favorites, dependent: :destroy
  # Collection
  has_many :favorite_paints, through: :favorites, source: :paint, dependent: :destroy

  has_one_attached :photo

  validates :first_name, presence: true, length: { minimum: 2, maximum: 15 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 15 }
end
