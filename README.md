# BookClub

This BookClub web application allows you to create book clubs to add books and read along. You can also join other book clubs. Have fun reading 😊.

# Installation Instructions

Clone the repo, run bundle install to install the required dependencies. In order to have access to the Google Authentication you should...

- Obtain the Google OAuth 2.0 credentials (client_id & secret_key) from the Google API Console
- Add the google_client_id and google_client_secret to the credentials.yml.enc.file

  - Run EDITOR="code --wait" rails credentials.edit in the terminal to edit the credentials.yml.enc.file
  - Write the following:

  * google:
    - google_client_id: [ADDCLIENTID]
    - google_client_secret: [ADDCLIENTSECRET]

  - Close the credentials.yml.enc.file. It should say "File encrypted and saved." in the terminal.

- Run rails s in the terminal
- Open http://localhost:3000/ in your browser

# Contributer's Guide

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

# License

This is available as open source under the terms of the [MIT License](https://choosealicense.com/licenses/mit/).
