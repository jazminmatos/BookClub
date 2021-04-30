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

2. Update model associations
3. Create SessionsController
4. Model validations
5. Controller Actions & Views

   - Actions: index, show, new, create, edit, update, destroy
   - requiring/permiting params
   - Views: index.html.erb, show.html.erb, new.html.erb, edit.html.erb, \_form.html.erb

   - double check resources work

Nested Resources
OmniAuth - use Devise gem?
Clean up views w/ partials/layouts/locals etc.
Scope Method
