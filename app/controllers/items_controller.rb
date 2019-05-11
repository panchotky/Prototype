class ItemsController < ApplicationController

  def new
      @item = Item.new
      @items = Item.all
      @item.discs.build
      @discs = Disc.all
      # @disc.songs.build
      @songs = Song.all
  end

  def create
      item = Item.new(item_params)
      item.save
      redirect_to "/"
  end







      private
# 子要素・孫要素も一緒に許可する。　idと_destroyを必ず入れる
      def item_params
      	  params.require(:item).permit(:name,
      	  	                            discs_attributes: [:id, :number, :_destroy,
      	  	                            songs_attributes: [:id, :name, :_destroy]])
      end



end