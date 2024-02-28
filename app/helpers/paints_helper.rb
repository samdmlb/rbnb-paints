module PaintsHelper

  def first_five_photos(paint)
    paint.photos.limit(5) if paint.photos.attached?
  end

  # Utilisé pour l'affichage du bouton like dans l'index
  def favorite_exists_for_paint?(paint)
    current_user && paint.favorites.exists?(user_id: current_user.id)
  end

end
