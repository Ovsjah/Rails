class Tag < ApplicationRecord
  has_many :taggings  # tag has many taggings where the relationship between tags and articles stores
  has_many :articles, through: :taggings  # tag has many articles through the relationship of taggings
  #def to_s  # alternative way to override to_s method to interact with object's name attribute instead of whole instace (#<Tag:0x005642b9bef558>)
    #name
  #end
end
