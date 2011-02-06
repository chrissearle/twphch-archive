# coding: UTF-8

class Challenge < ActiveRecord::Base
  has_many :images

  def ordered_images
    self.images.sort{ |a,b| a.rank <=> b.rank }
  end
end
