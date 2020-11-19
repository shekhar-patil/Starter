## Ruby on Rails boilerplate

### Heroku deployment ready. - [https://ror-starter.herokuapp.com/](https://ror-starter.herokuapp.com/)

* Frontend - Bootstrap
* Authentication - Devise gem
* Debugger - byebug, pry
* Testing - RSpec, FactoryBot
* Authorization - CanCanCan

### How to replace starter name with your Project name.
  Goto root directory of starter app.
  1. Then run 'git init'
  2. Then execute following commands

* perl -pi -w -e 's/starter/your_project_name/g;' $(git ls-files)
* perl -pi -w -e 's/STARTER/YOUR_PROJECT_NAME/g;' $(git ls-files)
