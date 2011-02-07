class BlogsController < ApplicationController
  before_filter :load_categories

  def index
    if (params[:category])
      @blogs = Category.find(params[:category]).blogs.ordered
    else
      @blogs = Blog.ordered
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def page_name
    'blog'
  end

  private

  def load_categories
    @categories = Category.order(:title)
  end

end
