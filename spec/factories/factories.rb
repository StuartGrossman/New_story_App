FactoryGirl.define do 
	sequence :email do |x|
		"Stuart#{x}@stuart.com"
	end

	factory :story do 
		story_name "Hello first story"
		story_address "San Francisco"
		story_text "This is a story"
		user
	end
	factory :user do 
		email
		password "password"
		password_confirmation "password"
	end
end