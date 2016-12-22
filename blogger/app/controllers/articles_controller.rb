class ArticlesController < ApplicationController
  def index
    @articles = Article.all  # creating an instance variable that is a list of articles for being accessed both in controller and view
  end

  def show
    @article = Article.find(params[:id])  # instance variable that uses find method on our model Article class and takes params[:id] from the requested url as parameter to find the requested article in the db
    #render plain: params.inspect
  end
end
