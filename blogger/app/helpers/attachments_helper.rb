module AttachmentsHelper
  def attachment_params
    params.require(:attachment).permit(:title, :body, :image)
  end
end
