class Article < ApplicationRecord
  has_many :comments  # article has many comments
end
