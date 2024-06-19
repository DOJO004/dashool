class LikesController < ApplicationController
  before_action :check_current_user, only: [:create]

  def show
    cocktail = Cocktail.find(params[:cocktail_id])
    likes_count = cocktail.likes.count
    liked = cocktail.likes.exists?(user_id: current_user.id) if current_user.present?
    render json: {
      likes_count: likes_count,
      current_user_liked: liked,
    }
  end

  def create
    @like = Like.new(user_id: current_user.id, cocktail_id: params[:cocktail_id])
    if @like.save
    else
      destroy
    end
    show
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id)
    @like.delete
  end

  private

  def check_current_user
    redirect_to new_user_session_path if current_user.nil?
  end
end
