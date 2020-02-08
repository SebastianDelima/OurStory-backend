class StoryPointsController < ApplicationController

    def create
        story_point = StoryPoint.create(story_points_params)
        render :json => story_point
    end

    def update
        
    end

    private

    def story_points_params
        params.require(:story_point).permit(:user_id, :story_id, :content, :user_name)    
    end
end
