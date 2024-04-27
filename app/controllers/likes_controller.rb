class LikesController < ApplicationController
    before_action :authenticate_user!
    def add_like
        like = Like.new(user_id: current_user.id, cocktail_id: params[:cocktail_id])
        like.save
    end
end
