class StickersController < ApplicationController

  def index
  	@stickers = Sticker.all
  	render json: @stickers
  end
  #return big stickers
  def big
    @stickers = Sticker.is_big
    render json: @stickers
  end
  #returns small stickers
  def small
    @stickers = Sticker.is_small
    render json: @stickers
  end
#displays record(s) either by UUID or shortURL
  def show
    @sticker = Sticker.find_by_shortURL_or_id params[:id]
    if@sticker
      render json: @sticker
    else
      render :json => Hash[:error , "record not found"], status: 404
    end
  end

  def create
  	#crete new sticker
  	@sticker = Sticker.new(params[:sticker].permit(:title, :description, :URL, :size))
  	@sticker.save!
  	render nothing: true, status: 201
  end
end
