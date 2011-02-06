class Photo
  def self.get_photo(id)
    flickr.photos.getInfo(:photo_id => id)
  end
end