class CollectsController < ApplicationController
  before_action :authenticate_user!

  def create
    profile = Profile.find(params[:profile_id])
    current_user.followed_profiles << profile
    redirect_to profile, notice: "幫您追蹤!🎉"
  end

  def destroy
    profile = Profile.find(params[:profile_id])
    current_user.followed_profiles.delete(profile)
    redirect_to profile, notice: "已取消追蹤🥹"
  end
end
