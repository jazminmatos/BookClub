# BookClub

This BookClub web application allows you to create book clubs to add books and read along. You can also join other book clubs. Have fun reading 😊.

# Installation Instructions

Clone the repo, run bundle install to install the required dependencies. In order to have access to the Google Authentication you should...

1. Obtain the Google OAuth 2.0 credentials (client_id & secret_key) from the Google API Console
2. Add the google_client_id and google_client_secret to the credentials.yml.enc.file
   a. Run EDITOR="code --wait" rails credentials.edit in the terminal to edit the credentials.yml.enc.file
   b. Write the following:

   google:
   google_client_id: [ADDCLIENTID]
   google_client_secret: [ADDCLIENTSECRET]

   c. Close the credentials.yml.enc.file. It should say "File encrypted and saved." in the terminal.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
