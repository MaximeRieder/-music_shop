class ChannelsController < ApplicationController
  def show
    @channel = Channel.find(current_user.id)
  end
end
