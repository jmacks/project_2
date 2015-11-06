class CategoriesController < ApplicationController


  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @image = Image.new
    @image.category_id = @image.id
    @caption = Caption.new
    @caption.category_id = @caption.id
  end





end
