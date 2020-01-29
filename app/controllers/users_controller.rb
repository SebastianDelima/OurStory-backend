class UsersController < ApplicationController

    def index
        users = User.all
        render :json => users
    end

    def create
        user = User.create(user_params)
        reder :json => user
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :short_bio)
    end
end
