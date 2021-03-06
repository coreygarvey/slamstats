class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
  	@general_articles = Article.general.order('created_at desc')
    @basketball_articles = Article.basketball.order('created_at desc')
  end

  def new
  	@article = Article.new
  end

  def create
    @article = Article.new(article_params)    # Not the final implementation!
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      flash[:success] = "Article updated"
      redirect_to @article
    else
      render 'edit'
    end
  end

  private

  def article_params
	 params.require(:article).permit(:category, :title, :description, :body)
  end
end
