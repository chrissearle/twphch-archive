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
    if session[:colour].nil?
      session[:colour] = 'blue'
    end

    if !params[:colour].nil?
      if (params[:colour] == 'blue' || params[:colour] == 'green' || params[:colour] == 'orange' || params[:colour] == 'purple')
        session[:colour] = params[:colour]
      end
    end

    session[:colour]
  end
end
