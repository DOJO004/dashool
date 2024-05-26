class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    
      def index
        @articles = Article.all.order(created_at: :desc)
      end
    
      def show
      end
    
      def create
        @article = Article.new(article_params)
        if @article.save
          redirect_to @article, notice: "文章建立成功!"
        else
          flash.now[:alert] = @article.errors.full_messages
          render :new
        end
      end

      def edit
        
      end
    
      def update
        if @article.update(article_params)
          redirect_to @article, notice: "文章更新成功!"
        else
          flash.now[:alert] = @article.errors.full_messages
          render :edit
        end
      end 
    
      def destroy
      end

      private

      def set_article
        @article = Article.find(params[:id])
      end

      def article_params
        params.require(:article).permit(:title, :category, :content)
      end
end
