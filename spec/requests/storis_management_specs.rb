require 'spec_helper'

describe Stories do 
	describe 'Stories' do 
		it 'should create story'
		story = Story.new(story_name: "hello")
		story.should be_valid
	end
end