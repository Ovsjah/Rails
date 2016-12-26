class Comment < ApplicationRecord
  belongs_to :article  # a comment relates to a single article
end
