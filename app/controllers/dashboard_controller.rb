class DashboardController < ApplicationController
	before_filter :authenticate_user!
	def index

		@stories = current_user.stories
    	@hash = Gmaps4rails.build_markers(@stories) do |story, marker|
      marker.lat story.latitude
      marker.lng story.longitude
      # marker.picture @picture
      marker.infowindow "<a href='/stories/#{story.id}'>#{story.story_title}</a>"
    	end
	end

end
