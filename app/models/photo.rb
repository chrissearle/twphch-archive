class Photo
  def self.get_photo(id)
    photo = Rails.cache.read(id)

    if (photo.nil?)
      begin
        Rails.cache.write(id, flickr.photos.getInfo(:photo_id => id))
      rescue FlickRaw::FailedResponse => e
        Rails.logger.warn(e)
      end
      photo = Rails.cache.read(id)
    end

    photo
  end
end