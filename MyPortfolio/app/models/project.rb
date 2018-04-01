class Project < ApplicationRecord

  belongs_to :user
  has_many :images, dependent: :destroy

  mount_uploader :thumbnail, ImageUploader

end
