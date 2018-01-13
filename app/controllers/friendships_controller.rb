class FriendshipsController < ApplicationController

  def index
    @friend_array = current_user.friendships
  end

  def destroy
    deleted_friendship = Friendship.find(params[:id])
    deleted_friend = User.find(deleted_friendship.friend_id)
    current_user.remove_friend(deleted_friend)
    redirect_to user_friendships_path(current_user.id)
  end

  def create
    friend = User.find(params[:format])
    current_user.friend_request(friend)
    friend.accept_request(current_user)
    redirect_to user_friendships_path(current_user.id)
  end

end
