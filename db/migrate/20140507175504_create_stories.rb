class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :story_title
      t.string :story_address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
