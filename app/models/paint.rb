class Paint < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true, length: { maximum: 40 }
  validates :artist, presence: true, length: { maximum: 30 }
  validates :movement, presence: true
  validates :technique, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 999 }
  validates :year, presence: true,  numericality: { only_integer: true, greater_than_or_equal_to: 1000, less_than_or_equal_to: Date.current.year }
  validates :description, presence: true, length: { minimum: 15 }

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: %i[name artist movement technique],
                  using: {
                    tsearch: { prefix: true }
                  }
end
