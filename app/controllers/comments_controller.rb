class CommentsController < ApplicationController 
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]
  def index
    @comments = Comment.includes(user: :profile).where(cocktail_id: params[:cocktail_id])
  end

  def create
       @comment = current_user.comments.build(comment_params)
      if @comment.save
        respond_to do |format|
          format.turbo_stream {render turbo_stream: turbo_stream.append("comments", partial: "comments/comment", locals: {comment: @comment})}
          format.html { redirect_to @comment.cocktail, notice: "留言成功" }
        end
      else
        flash.now[:alert] = @comment.errors.full_messages
        render :new
      end
  end

  def edit
      @comment = Comment.find(params[:id])
  end

  def update
      @comment = Comment.find(params[:id])
      if @comment.update(comment_params)
        render json: { comment: @comment.messages }, status: :ok
      else
        render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
      end
  end
    
  def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
  end

  private

  def comment_params
      params.require(:comment).permit(:messages, :cocktail_id)
  end
end
