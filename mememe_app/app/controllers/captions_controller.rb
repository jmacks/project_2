class CaptionsController < ApplicationController

  def index
  end

  def create
    @caption = Caption.new(caption_params)
    @caption.image_id = params[:image_id]
    @caption.user_id = params[:user_id]
    @caption.save
    redirect_to category_image_path(params[:category_id], params[:image_id])
  end

  def upvote
    
  end


  def caption_params
    params.require(:caption).permit(:text)
  end

end
