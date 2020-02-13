class FriendRequestsController < ApplicationController

    def index
        requests = FriendRequest.all
        render json: requests
    end

    def create
         FriendRequest.create(request_params)      
    end

    def destroy      
      request = FriendRequest.find_by id: params[:id]
      request.destroy
    end

    private

    def request_params
        params.require(:friend_request).permit(:receiver_id, :requestor_id)
    end
end
