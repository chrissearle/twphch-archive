# coding: UTF-8

# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper
  def title(page_title, show_title = true)
    content_for(:title) { h(page_title.to_s) }
    @show_title = show_title
  end

  def show_title?
    @show_title
  end

  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end

  def class_for_page_name(controller, page_check)
    if (controller.page_name == page_check)
      'selected'
    else
      ''
    end
  end

  def css_colour
    session[:colour]
  end

  def flickr_image_url(image, suffix = '')
    if (!suffix.blank?)
      suffix = "_#{suffix}"
    end

    "http://farm#{image['farm']}.static.flickr.com/#{image['server']}/#{image['id']}_#{image['secret']}#{suffix}.jpg"
  end

  def flickr_photographer_name(photographer)
    (photographer.realname && !photographer.realname.blank?) ? photographer.realname : photographer.username;
  end

  def flickr_photographer_profile(photographer)
    "http://www.flickr.com/people/#{photographer.nsid}/"
  end

  def flickr_photographer_stream(photographer)
    "http://www.flickr.com/photos/#{photographer.nsid}/"
  end

  def flickr_photographer_buddy_icon(photographer)
    if (photographer.iconserver.to_i > 0)
      "http://farm#{photographer.iconfarm}.static.flickr.com/#{photographer.iconserver}/buddyicons/#{photographer.nsid}.jpg"
    else
      "http://www.flickr.com/images/buddyicon.jpg"
    end
  end

  def flickr_image_description(image)
    image['description'].gsub(/\n/, "<br/>").html_safe
  end

  def flickr_get_image(image)
    Photo.get_photo(image.fid)
  end

end
