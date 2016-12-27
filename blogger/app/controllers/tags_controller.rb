class TagsController < ApplicationController

  def index
    @tags = Tag.all  # create an instance variable that is a list of tags for being accessed both in controller and view
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    flash.notice = "Tag '#{@tag.name}' Deleted!"

    redirect_to tags_path
  end
end
