# coding: UTF-8

class FirstYearController < ApplicationController
  def index
    @first = ['4069606518'].map {|id| flickr.photos.getInfo(:photo_id => id)}
    @second = ['4408786160'].map {|id| flickr.photos.getInfo(:photo_id => id)}
    @third =  ['3863862273','3910004818'].map {|id| flickr.photos.getInfo(:photo_id => id)}
  end

  def page_name
    '52'
  end
end
