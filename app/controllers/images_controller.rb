class ImagesController < ApplicationController
  def show
    @image = flickr.photos.getInfo(:photo_id => params[:id])
    @data = Image.find_by_fid(params[:id])
  end
end
