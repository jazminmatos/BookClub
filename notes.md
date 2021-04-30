Step by Step

Establishing basic functionality:

1. Resource Generators (migrations, models, controllers, resources)
   REMINDER: --no-test-framework

   - User: rails g resource User name username password_digest --no-test-framework
   - Club: rails g resource Club name --no-test-framework (can't call it BookClub b/c 'already used in app or reserved by Ruby on Rails')
   - Book: rails g resource Book title author summary user:belongs_to club:belongs_to --no-test-framework
   - Comment: rails g resource Comment content user:belongs_to book:belongs_to --no-test-framework

   - rails db:migrate
   - double check schema is correct

2. Update model associations for User, Club, Book, Comment
3. Add validations for User, Club, Book, Comment
4. Create SessionsController
5. Controller Actions
   - Actions: index, show, new, create, edit, update, destroy
   - requiring/permiting params
6. Views

   - Views: index.html.erb, show.html.erb, new.html.erb, edit.html.erb, \_form.html.erb
   - double check resources work & things are displayed

7. OmniAuth & Devise - follow along video

   - Make sure sign up & sign in work
   - Make sure all views work
   - How do I check whether error shows up when google login doesn't work???

8. Make some fake users, seed the data, double check relationships

9. Destroy SessionsController b/c Devise

Nested Resources
Scope Method

Drying up project:

1. Clean up views w/ partials/layouts/locals etc. - make sure to remove files I don't need
2. Clean up resources - make sure I remove routes I don't need
3. Clean up controllers
   - make sure to remove actions I don't need
   - add callbacks if necessary
   - add filters if necessary
