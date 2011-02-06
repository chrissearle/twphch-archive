# coding: UTF-8

class ImagesController < ApplicationController
  def show
    @image = Photo.get_photo(params[:id])
    @data = Image.find_by_fid(params[:id])
    @tags = @image['tags']
    @photographer = @image['owner']
  end
end
