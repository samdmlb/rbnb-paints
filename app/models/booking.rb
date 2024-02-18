class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :paint

  validates :user, presence: true
  validates :paint, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
  validates :total_price, presence: true
end
