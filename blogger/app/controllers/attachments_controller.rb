class AttachmentsController < ApplicationController
  include AttachmentsHelper

  def create
    @attachment = Attachment.new(attachment_params)
    @attachment.article_id = params[:article_id]

    @attachment.save

    redirecto_to article_path(@attachment.article)
end
