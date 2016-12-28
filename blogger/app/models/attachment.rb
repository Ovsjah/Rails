class Attachment < ApplicationRecord
  belongs_to :article
  has_attached_file :image  # paperclip's method understands that this model has fields with image_ and accepts a file attachment
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]  # paperclip's method that validates proper file types
end
