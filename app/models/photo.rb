class Photo < ApplicationRecord
  belongs_to :pages
  mount_uploader :picture, PictureUploader
end
