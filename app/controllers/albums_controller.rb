class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    @channels = Channel.order(rating: :desc).first(4)
  end

  def show
  end

  def new
  end

  def create
  end
end
