Story.delete_all
User.delete_all

c1 = Story.create(:story_title => 'First Story', :story_address => 'San Francisco California', :story_text => "This is a story!")


tim = User.create(:email => "tim.garcia@gmail.com", :password => "password123", :password_confirmation => "password123")
rafi = User.create(:email => "rafi.sofaer@gmail.com", :password => "asdasd", :password_confirmation => "asdasd")



 # create_table "stories", force: true do |t|
 #    t.string   "story_title"
 #    t.string   "story_address"
 #    t.float    "longitude"
 #    t.float    "latitude"
 #    t.datetime "created_at"
 #    t.datetime "updated_at"
 #    t.text     "story_text"
 #    t.integer  "users_id"