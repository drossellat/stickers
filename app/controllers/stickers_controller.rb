class StickersController < ApplicationController
  def index
  	if params[:size]== "big"
  		@stickers = Sticker.is_big
  	elsif params[:size] == "small"
  		@stickers = Sticker.is_small
  	else
  		@stickers = Sticker.all
  	end
  	render json: @stickers
  	#render text: params.inspect
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
