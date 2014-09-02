class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
  	@articles = Article.all
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

  private

  def article_params
	 params.require(:article).permit(:category, :title, :body)
  end
end
