class CommentsController < ApplicationController
  before_filter :require_login, except: [:create]

  include CommentsHelper
  def create
    #render plain: params.inspect
    @comment = Comment.new(comment_params)  # creates instance variable using new call with comment_params func as a parameter on our comment model object
    @comment.article_id = params[:article_id]  # set article's id to one from params hash

    @comment.save

    redirect_to article_path(@comment.article)  # find the article associated with this comment and set it as parameter to article_path method
  end
end
