class Story < ApplicationRecord
    has_many :story_points
    has_many :user_stories
end
