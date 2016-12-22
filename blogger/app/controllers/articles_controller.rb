class ArticlesController < ApplicationController
  include ArticlesHelper  # includes module ArticlesHelper to provide Strong Parameters
  def index
    @articles = Article.all  # creating an instance variable that is a list of articles for being accessed both in controller and view
  end

  def show
    @article = Article.find(params[:id])  # instance variable that uses find method on our model Article class and takes params[:id] from the requested url as parameter to find the requested article in the db
    #render plain: params.inspect
  end

  def new
    @article = Article.new  # creates instance variable of our Article model that has blank lines of id, title, body, created_at, updated_at
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    #fail  # another way to show params method the fail method will halt the request allowing to examine the request parameters
    #@article = Article.new   # creates new blank Article model
    #@article.title = params[:article][:title]  # gets title from params hash of our request
    #@article.body = params[:article][:body]  # gets body from params hash of our request
    #@article.save  # saves our instance variable in the db

    #redirect_to article_path(@article)  # redirects our created article to show action


    # another way to create @article variable
    #@article = Article.new(
      #title: params[:article][:title],
      #body: params[:article][:body]
    #)
    #@article.save

    #redirect_to article_path(@article)


    # the best look but won't work because of the security reasons
    #@articles = Article.new(params[:article])
    #@article.save

    #redirect_to article_path(@article)


    # the most correct way of creation @article var with Strong Parameters that use two new methods, require and permit. They help to declare which attributes to accept. They're used in a helper method inside app/helpers/articles_helper.rb
    @article = Article.new(article_params)
    @article.save
    
    flash.notice = "Article '#{@article.title}' Created!"

    redirect_to article_path(@article)
  end

  def update
    @article = Article.find(params[:id])  # first find our article in db
    @article.update(article_params)  # call an update method on our instance with our helper method as parameter the difference between new and update is that update automatically saves the changes in db

    flash.notice = "Article '#{@article.title}' Updated!"  # the controller provides the flash.notice method to inform user about interactions

    redirect_to article_path(@article)  # redirecting to show action
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    flash.notice = "Article '#{@article.title}' Deleted!"

    redirect_to articles_path
  end
end
