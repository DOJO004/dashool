class LikesController < ApplicationController
    before_action :authenticate_user!

    def get_likes_count
        cocktail = Cocktail.find(params[:cocktail_id])
        likes_count = cocktail.likes.count
        render json: { likes_count: likes_count }
    end
    
    def create
        @like = Like.new(user_id: current_user.id, cocktail_id: params[:cocktail_id])
        if @like.save
            respond_to do |format|
                format.turbo_stream { render turbo_stream: turbo_stream.update(@like) }
                format.html         { redirect_to cocktails_path(params[:cocktail_id]) }
              end
        else
            destroy
        end
    end

    def destroy
        @like = Like.find_by(user_id: current_user.id)
        @like.delete
    end
end
