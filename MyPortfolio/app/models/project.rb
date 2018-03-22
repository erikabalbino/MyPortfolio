class Project < ApplicationRecord
  belongs_to :user

  mount_uploader :thumbnail, ImageUploader

end
