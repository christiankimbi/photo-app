class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validates_integrity_of :picture
   # validate :picture_size
  
  #private 
  # def picture_size
  #   byebug
  #   if picture.size > 5.megabytes
  #     errors.add(:picture, "should be less than 5MB")
  #   end
  # end
  
end
