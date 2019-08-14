class Place < ApplicationRecord
	validates :name, presence: true

	belongs_to :user
	has_many :comments
	has_many :photos
	
    geocoded_by :address
    after_validation :geocode

 

end
