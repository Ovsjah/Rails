class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title    # creates column title as string
      t.text :body       # creates column body as test or varchar depending on DB
      t.timestamps       # creates 2 columns inside our table named created_at and updated_at. When an article is created its created_at and updated_at are automatically set.
    end
  end
end
