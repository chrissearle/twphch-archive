# coding: UTF-8

class FirstYearController < ApplicationController
  def index

    first_images  = Image.get_first_for_rank(1)
    second_images = Image.get_first_for_rank(2)
    third_images  = Image.get_first_for_rank(3)

    @images       = {
        1 => first_images.map(&:fid).map { |id| Photo.get_photo(id) },
        2 => second_images.map(&:fid).map { |id| Photo.get_photo(id) },
        3 => third_images.map(&:fid).map { |id| Photo.get_photo(id) }
    }

    @votes        = {
        1 => first_images[0].first_votes,
        2 => second_images[0].first_votes,
        3 => third_images[0].first_votes
    }
  end

  def page_name
    '52'
  end
end
