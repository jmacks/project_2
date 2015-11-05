class CaptionsController < ApplicationController

  def create
    @caption = Caption.new(caption_params)
    @caption.user_id = params[:user_id]
    @caption.save
    redirect_to user_image_captions_path
  end

  def caption_params
    params.require(:caption).permit(:text)
  end

end
