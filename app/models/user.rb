class User < ApplicationRecord

    has_many :friendships, ->(user) { where("friend_a_id = ? OR friend_b_id = ?", user.id, user.id) }
    has_many :friends, through: :friendships
    has_many :user_stories
    has_many :stories, through: :user_stories

end
