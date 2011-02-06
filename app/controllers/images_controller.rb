class ImagesController < ApplicationController
  def show
    @image = Photo.get_photo(params[:id])
    @data = Image.find_by_fid(params[:id])
  end
end
