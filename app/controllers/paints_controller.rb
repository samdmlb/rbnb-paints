class PaintsController < ApplicationController
  before_action :set_paint, only: %i[show edit update destroy]

  def index
    @paints = Paint.all
    @paints = Paint.global_search(params[:query]) if params[:query].present?
  end

  def show
    @booking = Booking.new
  end

  def new
    @paint = Paint.new
  end

  def create
    @paint = Paint.new(paint_params)
    @paint.user = current_user
    if @paint.save
      redirect_to paint_path(@paint)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def update
    @paint.update(paint_params)
    redirect_to paint_path(@paint)
  end

  def my_paints
    @paints = Paint.where(user_id: current_user.id)
  end

  def destroy
    @paint.destroy
    redirect_to paints_path, status: :see_other
  end

  private

  def paint_params
    params.require(:paint).permit(:name, :artist, :movement, :technique, :description, :price, :year, :photo)
  end

  def set_paint
    @paint = Paint.find(params[:id])
  end

end
