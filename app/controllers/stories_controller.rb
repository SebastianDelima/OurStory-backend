class StoriesController < ApplicationController
    
    def index
        stories = Story.all
        render :json => stories
    end
    
    def create
        story = Story.create(story_params)
        render :json => story
    end
    
    private

    def story_params
        params.require(:story).permit(:title, :description, :image, :completed)
    end

end
