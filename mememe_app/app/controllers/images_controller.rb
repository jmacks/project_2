class ImagesController < ApplicationController

  

  def index
    @images = Image.all
    @category = Category.find(params[:category_id])
  end

  def show
    @image = Image.find(params[:id])
    @category = Category.find(params[:category_id])
    @caption = Caption.new
    @caption.image_id = @caption.id
  end

  def new
    @category = Category.find(params[:category_id])
    @image = Image.new
  end

  def create
    @category = Category.find(params[:category_id])
    @image = Image.new(image_params)
    @image.user_id = params[:user_id]
    @image.category_id = params[:category_id]
    @image.save
    redirect_to category_image_path(@category.id, @image.id)
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    flash.notice = "The '#{@image.title}' is Gone!"
    redirect_to category_images_path
  end

  def image_params
    params.require(:image).permit(:title, :photo_url)
  end


end
