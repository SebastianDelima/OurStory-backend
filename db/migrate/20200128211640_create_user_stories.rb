class CreateUserStories < ActiveRecord::Migration[6.0]
  def change
    create_table :user_stories do |t|
      t.integer :user_id
      t.integer :story_id
      t.boolean :creator

      t.timestamps
    end
  end
end
