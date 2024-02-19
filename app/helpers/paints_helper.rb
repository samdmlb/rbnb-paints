module PaintsHelper
  def first_five_photos(paint)
    paint.photos.limit(5) if paint.photos.attached?
  end
end
