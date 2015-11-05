class ImagesController < ApplicationController

  def index
    @images = Image.all
    @category = Category.find_by(params[:id])
  end

  def show
    @image = Image.find(params[:id])
    @caption = Caption.new
    @caption.image_id = @caption.id

  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.user_id = params[:user_id]
    @image.category_id = params[:category_id]
    @image.save
    redirect_to category_image_path(@image)
  end

  def image_params
    params.require(:image).permit(:title, :photo_url)
  end


end
