class UsersController < ApplicationController

    def index
        users = User.all
        render json: users.to_json(serialized_data)
    end

    def create
        user = User.create(user_params)
        render json: user.to_json(serialized_data)
    end

    def show
       
        user = User.find_by id: params[:id]
        render json: user.to_json(serialized_data)
    end

    private

    def serialized_data 

        {
            :include => [
                :stories,
                :friendships,
                :friend_requests_as_receiver
            ]
        }

    end

    def user_params
        params.require(:user).permit(:name, :email, :short_bio, :img)
    end
end
