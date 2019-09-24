class Channel < ApplicationRecord
  belongs_to :user
  has_many :albums
  mount_uploader :picture, PictureUploader
end
