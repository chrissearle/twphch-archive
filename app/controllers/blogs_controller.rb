class BlogsController < ApplicationController
  before_filter :load_categories

  def index
    @blogs = Blog.order(:date)

    if (params[:category_id])
      @blogs = @blogs.find_all{|blog| blog.category.id == params[:category_id]}
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
