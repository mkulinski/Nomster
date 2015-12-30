class Place < ActiveRecord::Base
	#to make sure every entry has a user associated with it
	belongs_to :user
	#allows each place to have multiple comments
	has_many :comments
	#allows each place to have multiple photos
	has_many :photos
	#for Geocoder gem
    geocoded_by :address
    after_validation :geocode
  	#to validate form entries
	validates :address, :description, :presence => true
	validates :name, length: { minimum: 4 }, :presence => true
end
