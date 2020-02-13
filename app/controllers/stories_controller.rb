class StoriesController < ApplicationController
    
    def index
        stories = Story.all
        render json: stories.to_json(serialized_data)
    end
    
    def create
        
        story = Story.create(story_params)
        render :json => story
    end

    def update
       story =  Story.update(params[:id], completed: true)
       render json: story
    end

    def destroy

        arr = []
        story = Story.find_by id: params[:id]
        user_story = UserStory.find_by id: params[:user_story_id]

         UserStory.all.each{|user_story|
            if user_story[:story_id] == params[:user_story_id]
            user_story.destroy
            end
         }

        story.destroy
    end

    private
    
    def serialized_data
        {  
            :include =>  [
              :story_points 
            ]
        }
    end

    def story_params
        params.require(:story).permit(:title, :description, :image, :completed)
    end

end
