class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :image
      t.string :description
      t.boolean :completed

      t.timestamps
    end
  end
end
