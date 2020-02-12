class FriendshipsController < ApplicationController

    def create   
        Friendship.create(friendship_params)
    end

    def destroy   
        friendship = Friendship.find_by id: params[:id]
        friendship.destroy
    end

    private

    def friendship_params
        params.require(:friendship).permit(:friend_a_id, :friend_b_id)
    end
end
