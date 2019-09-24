class ChannelsController < ApplicationController
  def show
    @channel = Channel.find(current_user.id)
  end

  def update
    @channel = Channel.update(channels_params)
    @channel.user = current_user
    @channel.save
  end

  def channels_params
    params.require(:channel).permit(:name, :picture)
  end
end
