class Project < ApplicationRecord

  belongs_to :user
  has_many :images, dependent: :destroy

  # has_many :likes, dependent: :destroy
  # has_many :likers, through: :likes, source: :user

  mount_uploader :thumbnail, ImageUploader

end
