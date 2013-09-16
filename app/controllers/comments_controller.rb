class CommentsController < ApplicationController
  load_and_authorize_resource
  before_filter :load_article

  def create
    @comment = @article.comments.build(params[:comment])
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @article, notice: "Added comment."
    else
      render :new
    end
  end

  private

  def load_article
    @article = Article.find(params[:article_id])
  end
end
