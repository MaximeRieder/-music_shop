class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    @channels = Channel.order(rating: :desc).first(5)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
  end

  def create
  end
end
