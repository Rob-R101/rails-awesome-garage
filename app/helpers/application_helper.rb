module ApplicationHelper
  def photo_url_for(car)
    if car.photo.attached?
      Rails.application.routes.url_helpers.rails_blob_url(car.photo, host: request.base_url)
    else
      nil
    end
  end
end
