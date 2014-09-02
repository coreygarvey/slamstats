class BlogController < ApplicationController
  def home
    @article = Article.find_by_id(1)
  end
end
