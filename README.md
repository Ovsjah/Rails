Simple Rails project

Steps
1. rails new blogger
2. rails generate model Article title:string body:text (creates model and migration)
3. rake db:migrate (rails db:migrate) (saves the migration file, create ariticles table in the databse)
4. rails console (allows to access and work with any part of your app directly)
5. create a resource named articles in routes.rb (resources :articles)
6. rake routes or rails routes (look up created routes)
7. rails generate controller articles (creates controller for router to manage requests)
8. def index action inside the articles_controller.rb inside ArticlesController class
9. create index template in app/views/articles
10. def show method inside the articles_controller.rb
11. create show template in app/views/articles
12. create screen.css stylesheet in app/assets/stylesheets

Skills after completing:
1. Setting up Rails project
2. Data Structures & Relationships
3. Routing
4. Migrations
5. Views with forms, partials, helpers
6. Adding gems for extra features
7. MVC architecture
8. RESTful design
9. Authentication basics
10. Heroku deploy
