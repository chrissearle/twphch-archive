class ImagesController < ApplicationController
  def show
    @image = flickr.photos.getInfo(:photo_id => params[:id])
  end
end
