class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader # We're using Carrierwave gem to associate the image with this model that we have.
end
