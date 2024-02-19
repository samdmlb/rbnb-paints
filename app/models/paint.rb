class Paint < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true, length: { maximum: 40 }
  validates :artist, presence: true, length: { maximum: 30 }
  validates :movement, presence: true # ,inclusion: ["Impressionnisme", "Romantisme","Cubisme", "Art abstrait"]
  validates :technique, presence: true # , inclusion: ["Aquarelle", "Peinture à l'huile"]
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 999 }
  validates :year, presence: true,  numericality: { only_integer: true, greater_than_or_equal_to: 1000, less_than_or_equal_to: Date.current.year }
  validates :description, presence: true, length: { minimum: 15 }
end
