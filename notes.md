Step by Step

Establishing basic functionality:

1. Resource Generators (migrations, models, controllers, resources)
   REMINDER: --no-test-framework

   - User: rails g resource User name username password_digest --no-test-framework (didn't need to do this before installing devise)
   - Club: rails g resource Club name --no-test-framework (can't call it BookClub b/c 'already used in app or reserved by Ruby on Rails')
   - Book: rails g resource Book title author summary user:belongs_to club:belongs_to --no-test-framework
   - Comment: rails g resource Comment content user:belongs_to book:belongs_to --no-test-framework

   - rails db:migrate
   - double check schema is correct

2. Update model associations for User, Club, Book, Comment

3. Add validations for User, Club, Book, Comment

4. Create SessionsController (unecessary due to devise gem)

5. Controller Actions

   - Actions: index, show, new, create, edit, update, destroy
   - requiring/permiting params

6. Views

   - Views: index.html.erb, show.html.erb, new.html.erb, edit.html.erb, \_form.html.erb
   - double check resources work & things are displayed

7. OmniAuth & Devise - follow along video

   - Make sure sign up & sign in work [x]
   - Make sure all views work [x]

8. Destroy SessionsController b/c Devise doesn't need it

9. Make some fake users, seed the data, double check relationships

   - Check models exist (User.all, Book.all, Comment.all, Club.all)
   - Create a user and check .comments, .books, .clubs (etc. w/ the rest of the models)
   - add Faker to Gemfile & bundle install

10. Establish instances inside controllers

    - add before_action for setting instances
    - add before_action for requiring login via :authenticate_user!

11. Add Bootstrap

12. Populate views & connect them via links

    - club (index, new/edit forms, show, destroy button)
    - book
    - comments

13. Nested Resources (Club => Book)

    - Define nested routes in routes.rb
    - Update child controller to handle nested resource (index, new, permitted params)
    - Test new routes (and see if it's possible to hack...)
    - Update view files w/ desired routes: new_club_book (nested) vs. new_book (not nested)

14. Nested Resources (Book => Comment)

    - Defined nested routes in routes.rb
    - Update child controller to handle nested resource (index, new, permitted params)
    - Test new routes (and see if it's possible to hack)
    - Update view files w/ desired routes: new_book_comment (nested) vs. new_comment (not nested)
      - Render comment index page in book show page?

15. Display/Update flash alerts

16. Who should have access to what???

- Should users be able to delete clubs or books?
- Should there be any restrictions on who can add books? How would I implement that?

Scope Method

Refactoring:

1. Clean up views w/ partials/layouts/locals etc. - make sure to remove files I don't need
   - Check if I need helpers
   - Is there logic in views? Move it elsewhere.
2. Clean up resources - make sure I remove routes I don't need
3. Clean up controllers
   - make sure to remove actions I don't need
   - add callbacks/lifecycle methods if necessary
   - add filters if necessary
4. Clean up models
   - Remove any attributes that the app is not using
5. Navigation Bar
   - Make sure everything in navigation works
