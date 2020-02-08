class UsersController < ApplicationController

    def index
        users = User.all
        render json: users.to_json(serialized_data)
    end

    def create
        user = User.create(user_params)
        render :json => user
    end

    private

    def serialized_data 

        {
            :include => [
                :stories
            ]
        }

    end

    def user_params
        params.require(:user).permit(:name, :email, :short_bio, :img)
    end
end
