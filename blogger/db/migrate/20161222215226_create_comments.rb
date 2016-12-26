class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.references :article, foreign_key: true  # the objects on the many end should have a foreign key referencing the one object, that foreign key should be titled with the name of the one object, then an underscore, then id. One article has many comments, each comment has a field named article_id

      t.timestamps
    end
  end
end
