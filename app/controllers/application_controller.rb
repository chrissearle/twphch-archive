# coding: UTF-8

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_colour



  def page_name
    ''
  end

  private

  def set_colour
    if session[:colour].nil?
      session[:colour] = 'blue'
    end

    if !params[:colour].nil?
      if (params[:colour] == 'blue' || params[:colour] == 'green' || params[:colour] == 'orange' || params[:colour] == 'purple')
        session[:colour] = params[:colour]
      end
    end
  end
end
