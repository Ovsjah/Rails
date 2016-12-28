class Article < ApplicationRecord
  has_many :comments  # article has many comments
  has_many :taggings # article has many taggings that is our mediator between tags and articles ralationship
  has_many :tags, through: :taggings  # an article has a list of tags through the relationship of taggings
  has_many :attachments
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }  # paperclip's method understands that this model has fields with image_ and accepts a file attachment
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]  # paperclip's method that validates proper file types

  def tag_list  # create tag_list func
    self.tags.collect do |tag|  # by using collect iterator on tags objects from our tags db...
      tag.name  # and choosing them by name...
    end.join(", ")  # and adding them into string by using join method
  end

  def tag_list=(tags_string)  # def setter method tag_list=
    tag_names = tags_string.split(", ").collect { |s| s.downcase }.uniq  # splits tags in the given string into the array of strings then creates a new array with the collect method that for each item invokes downcase method and puts the resulted items into the created array then applies uniq method to return new array with uniq items
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }  # goes through each of tag_names and finds or creates a tag with that name using rails built in method
    self.tags = new_or_found_tags  # assign found or created tags in db to our article
  end
  #def tag_list
    #tags.join(", ")
  #end
end
