class AddChannelIdToAlbum < ActiveRecord::Migration[5.2]
  def change
    add_reference :albums, :channel, foreign_key: true
  end
end
