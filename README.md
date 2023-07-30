# README

First add the following gems to the gemfile:
gem 'devise'
gem 'twitter-bootstrap-rails'
gem 'devise-bootstrap-views'

If using Rails 5, also add gem 'jquery-rails'
Then run bundle install
Then install devise:
rails generate devise:install
rails generate devise User

Run the following generators to install bootstrap themed styling:
rails generate bootstrap:install static
rails generate bootstrap:layout application # select Y to force override after hitting enter
rails generate devise:views:locale en
rails generate devise:views:bootstrap_templates
Also, in the application.css file under app/assets/stylesheets folder, right above the line that says *= require_tree add in the following line:


