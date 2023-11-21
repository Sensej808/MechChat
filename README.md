## Application

 MechChat is  a communication platform that will allow users to send instant messages, voice messages, or multimedia files to individuals or groups. It  will serve as a convenient and efficient way to connect with others 
 
**Our MVP features**

* Opportunity to write to others users

* Ability to create groups of users for general conversation

* Sending files (video files, audio files, images, etc.)

* Search chats among others

* User-friendly interface

* Excellent cyber protection

## Running in development mode
  
  Dependencies: 
  - Ruby 3.2
  - PostgreSQL
  - Node.js
  
  Fill credentials in `.env` file as
  ```
  MECH_CHAT_DEV_DATABASE_USERNAME= your_postgres_username
  MECH_CHAT_DEV_DATABASE_PASSWORD= your_postgres_password
  ```
  
  Install dependencies:
  ```bash
  bundle install
  npm install
  ```
  Run the frontend dev build:
  
  ```bash
  foreman start -f Procfile.dev
  ```
  
  Run the web server from IDE or from terminal with
  ```bash
  rails s
  ```