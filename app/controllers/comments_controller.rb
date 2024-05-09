class CommentsController < ApplicationController  
    def create
        @comment = current_user.comments.build(comment_params)
        if @comment.save
            render json: @comment
        else
            render json: @comment.errors
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:messages, :cocktail_id)
    end
end
