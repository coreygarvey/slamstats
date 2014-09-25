class BlogController < ApplicationController
  def home
    @art1 = Article.order('created_at desc').first
    @art2 = Article.find_by_id(1)
    @art3 = Article.find_by_id(3)
  end
end
 