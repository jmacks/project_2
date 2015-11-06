class CaptionsController < ApplicationController

  def create
    @caption = Caption.new(caption_params)
    @caption.image_id = params[:image_id]
    @caption.user_id = current_user.id
    @caption.save
    redirect_to user_image_captions_path(current_user.id, params[:image_id])
  end
  #
  # def new
  # end

  def caption_params
    params.require(:caption).permit(:text)
  end

end
