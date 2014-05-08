require 'spec_helper'

describe Stories do 
	describe 'Creating Stories' do 
		it 'should create story'
		story = FactoryGirl.build(:story, email: nil)
		story.should be_valid
	end
end