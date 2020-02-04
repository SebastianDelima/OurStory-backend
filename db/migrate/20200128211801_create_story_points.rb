class CreateStoryPoints < ActiveRecord::Migration[6.0]
  def change
    create_table :story_points do |t|
      t.integer :user_id
      t.integer :story_id
      t.string  :user_name
      t.string :content

      t.timestamps
    end
  end
end
