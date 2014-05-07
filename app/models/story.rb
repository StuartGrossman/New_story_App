class Story < ActiveRecord::Base
	belongs_to :user
	geocoded_by :story_address
	after_validation :geocode
end
