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

The way the JavaScript is going to flow is once signup form is submitted, the
JavaScript basically stops the regular handling of the submission, grabs the payment details, sends
it to Stripe. Stripe, verifies this info and sends a token back.
At that point, the JavaScript strips the credit card payment info and then submits the form to the server.

Demo credit cards:
TYPE                    CARD NO.            CVV             EXP. DATE
Visa	                4242424242424242	Any 3 digits	Any future date
Visa (debit)	        4000056655665556	Any 3 digits	Any future date
Mastercard	            5555555555554444	Any 3 digits	Any future date
Mastercard (2-series)	2223003122003222	Any 3 digits	Any future date
Mastercard (debit)	    5200828282828210	Any 3 digits	Any future date
Mastercard (prepaid)	5105105105105100	Any 3 digits	Any future date
