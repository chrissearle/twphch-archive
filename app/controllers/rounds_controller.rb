# coding: UTF-8

class RoundsController < ApplicationController
  def index
    @challenges = Challenge.order('tag')
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def page_name
    'archive'
  end
end
