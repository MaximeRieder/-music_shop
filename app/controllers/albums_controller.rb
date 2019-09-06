class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    @albums = Album.all
    @channels = Channel.order(rating: :desc).first(5)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
  end
  def create
    @album = Album.new(albums_params)
    @album.channel.user_id = current_user
    @album.save
    redirect_to channel_path(current_user)
  end

  private

  def albums_params
    params.require(:album).permit(:title, :genre, :picture)
  end
end
