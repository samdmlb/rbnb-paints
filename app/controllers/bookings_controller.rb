class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]
  before_action :set_paint, only: [:create]

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "paints/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = booking.find(params[:id])
  end

  def set_paint
    @booking = booking.find(params[:paint_id])
  end
end
