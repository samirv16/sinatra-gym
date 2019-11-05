# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
Has ActiveRecord database
- [x] Include more than one model class (e.g. User, Post, Category)
has a user and course model (2)
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
User has one has_many relationship
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
Course has one belongs_to relationship
- [x] Include user accounts with unique login attribute (username or email)
username must be unique
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
Controllers have all CRUD routes
- [x] Ensure that users can't modify content created by other users
uses a helper method to authenticate users on every action
- [x] Include user input validations
Forms Validate input
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
login and signup pages both include error msgs if somthing unexpected happens
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
Includes README.md
Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message