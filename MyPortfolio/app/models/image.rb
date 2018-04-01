class Image < ApplicationRecord
  belongs_to :project
  mount_uploader :avatar, ImageUploader
end
