class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :channel
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :create_channel

  private

  def create_channel
    Channel.create!(user: self)
  end
end
