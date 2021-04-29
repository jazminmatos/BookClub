Step by Step

Establishing basic functionality:

1. Resource Generators (migrations, models, controllers, resources)
   REMINDER: --no-test-framework
   - User: rails g resource User name username password_digest --no-test-framework
   - BookClub: rails g resource BookClub name
   - Book: rails g resource Book title author summary user:belongs_to book_club:belongs_to
   - Comment: rails g resource Comment content user:belongs_to book:belongs_to
2. Update model associations
3. Create SessionsController
4. Model validations
5. Controller Actions & Views
   - Actions: index, show, new, create, edit, update, destroy
   - requiring/permiting params
   - Views: index.html.erb, show.html.erb, new.html.erb, edit.html.erb, \_form.html.erb

Nested Resources
OmniAuth - use Devise gem?
Clean up views w/ partials/layouts/locals etc.
Scope Method
