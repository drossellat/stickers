class StickersController < ApplicationController
  def index
  	@stickers = Sticker.all
  	render json: @stickers
  	#render text: params.inspect
  end
  def big
    @stickers = Sticker.is_big
    render json: @stickers
  end
  def small
    @stickers = Sticker.is_small
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
