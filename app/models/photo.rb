class Photo < ActiveRecord::Base
	  belongs_to :user
  	  belongs_to :place
  	  #for carrierwave picture uploader
  	  mount_uploader :picture, PictureUploader
end
