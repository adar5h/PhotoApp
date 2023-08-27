class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader # We're using Carrierwave gem to associate the image with this model that we have.
  validates :picture_size

  private
  
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
