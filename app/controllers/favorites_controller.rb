class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.where(user_id: current_user.id)
  end

  def my_favorites
    @favorites = Favorite.where(user_id: current_user.id)
    render json: @favorites
  end

  def create
    puts params.inspect
    @favorite = Favorite.new(favorite_params)

    if @favorite.save
      render json: @favorite, status: :created
    else
      render json: { errors: @favorite.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    render json: { message: 'Favorite successfully removed' }
  end

  def destroy_from_favorites
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path, status: :see_other
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :paint_id)
  end

end
