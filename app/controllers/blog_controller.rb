class BlogController < ApplicationController
  def home
    @article = Article.order('created_at desc').first
  end
end
 