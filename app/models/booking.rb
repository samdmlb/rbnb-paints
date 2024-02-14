class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :paint

  validates :user, presence: true
  validates :paint, presence: true
  validates :end_date_is_later_than_start_date

  def end_date_is_later_than_start_date
    if end_date < start_date
      errors.add(:end_date, "The end date can't be before the starting date")
    end
  end
end
