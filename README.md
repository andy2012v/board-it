![Build Status](https://app.codeship.com/projects/236214)
![Code Climate](https://codeclimate.com/github/andy2012v/board-it)
![Coverage Status](https://coveralls.io/github/andy2012v/board-it)

# [board-it](https://daily-whiteboard.herokuapp.com/)

If your looking for a quick resource to practice whiteboarding exerercises, then WhiteBoard Daily is right for you! WhiteBoard Daily let's you create an account, look at three daily exercises(easy, medium, hard), submit an exercise, and view other resources through links to quality websites to assist in your interview training. Designed specifically to adhere to a simplistic layout where the use can quickly access an exercise. WhiteBoard Daily also has an admin status, you can create exercises, review exercise submissions with the ability to accept or deny them, and delete user accounts. Sign up and try it out!

## Creator
* [andy2012v](https://github.com/andy2012v)

## Technology
* Ruby on Rails
* Devise
* Heroku
* coveralls
* codeship
* codeclimate
* hound
* foundation
* postgreSQL

## Future Technologies
* React.js
* AWS
* carrierwave
* codemirror
* sendgrid(for email capabilities)

## Test Technology
* Rspec
* Capybara

## ER diagrams
* 2 ER diagrams are located in the app folder.

## How to get set it up
* `git clone`
* `bundle`

Once you have all those things, you can continue with setup by running the following commands:
* `rake db:create && rake db:migrate && rake db:seed`, in that order.
* `rake` to run the Ruby test suite

Enter `rails s`, then visit `localhost:3000` to see the site!
