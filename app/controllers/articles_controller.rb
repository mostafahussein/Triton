class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @articles_grid = initialize_grid(Article,
                                     :include => [:user])
    @pending = Article.pending.size
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    @article.user_id = current_user.id
    if @article.save
      redirect_to articles_url, notice: 'Created article.'

    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to articles_url, notice: 'Updated article.'
    else
      render :edit
    end
  end

end
