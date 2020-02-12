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
       
        story = Story.find_by id: params[:id]
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
