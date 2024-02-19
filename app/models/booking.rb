class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :paint

  validates :user, presence: true
  validates :paint, presence: true
  validates :start_date, comparison: { greater_than_or_equal_to: Date.today }
  validates :end_date, comparison: { greater_than: :start_date }
  validates :total_price, presence: true
end
