class StickersController < ApplicationController
  def index
  	@stickers = Sticker.all
  	render json: @stickers
  end
  def show
  	@sticker = Sticker.find(params[:id])
  	render json: @sticker
  end
  def create
  	##
  	@sticker = Sticker.new(params[:sticker].permit(:title, :description, :URL, :size, :free))
  	@sticker.save!
  	render nothing: true
  	#render text: params[:sticker].inspect
  end

end
