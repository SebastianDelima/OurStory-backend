class UserStoriesController < ApplicationController

    def index
        user_stories = UserStory.all
        render :json => user_stories
    end

    def create
       
        user_story = UserStory.create(user_story_params)
        render :json => user_story
    end

    private

    def user_story_params
        params.require(:user_story).permit(:story_id, :user_id, :creator)
    end

end
