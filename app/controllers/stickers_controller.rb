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
    if params[:id].match(/^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i)
      begin
    	 @sticker = Sticker.find(params[:id])
    	 render json: @sticker
      rescue ActiveRecord::RecordNotFound
        render :json => "record not found"
      end
    else
      render :json => "invalid key"
    end
  end

  def create
  	##
  	@sticker = Sticker.new(params[:sticker].permit(:title, :description, :URL, :size, :free))
  	@sticker.save!
  	render nothing: true
  	#render text: params[:sticker].inspect
  end

end
