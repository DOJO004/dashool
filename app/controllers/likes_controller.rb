class LikesController < ApplicationController
    before_action :authenticate_user!

    def show
        cocktail = Cocktail.find(params[:cocktail_id])
        likes_count = cocktail.likes.count
        liked = cocktail.likes.exists?(user_id: current_user.id)
        render json: { 
            likes_count: likes_count, 
            current_user_liked: liked
        }
    end

    def create
        @like = Like.new(user_id: current_user.id, cocktail_id: params[:cocktail_id])
        if @like.save
        else
            destroy
        end
        show()
    end

    def destroy
        @like = Like.find_by(user_id: current_user.id)
        @like.delete
    end
end
