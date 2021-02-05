class RelationshipsController < ApplicationController
  def follow
  current_user.follow(params[:user_id])
  redirect_to root_path
  end

  def unfollow
    current_user.unfollow(params[:user_id])
    redirect_to root_path
  end
  def create
    current_user.follow(params[:user_id])
		redirect_to root_path
  end
  def destroy
    current_user.unfollow(params[:user_id])
		redirect_to root_path
  end
end
