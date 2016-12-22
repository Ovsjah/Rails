Simple Rails project

Steps:
1) rails new blogger
2) rails generate model Article title:string body:text (creates model and migration)
3) rake db:migrate (rails db:migrate) (saves the migration file, create ariticles table in the databse)
4) rails console (allows to access and work with any part of your app directly)
5) create a resource named articles in routes.rb (resources :articles)
6) rake routes or rails routes (look up created routes)
7) rails generate controller articles (creates controller for router to manage requests)
8) def index action inside the articles_controller.rb inside ArticlesController class
9) create index template in app/views/articles
10) def show method inside the articles_controller.rb
11) create show template in app/views/articles
12) create screen.css stylesheet in app/assets/stylesheets
13) create new action inside our controller
14) create new template inside our views
15) create create action inside our controller to process the input from the new template form
16) create article_params method inside app/helpers/articles_helper.rb to ensure security features
17) add a link in show template to delete the article (method: :delete)
18) create destroy action in ArticlesController
19) add a link in show template to edit the article
20) create an edit action in ArticlesController
21) create edit template
22) refectoring edit and new templates in DRY style using partial `_form.html.erb`
23) create an update action in ArticlesController it's same like create for new (uses POST method to process the user input)
24) providing flash support for our actions (usually update, create, destroy) to inform user (flash.notice = "msg")
25) modifying the app/views/layouts/application.html.erb to accept flash.notice
26) modifying config/routes.rb to show 'articles#index' instead of rails demo

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
