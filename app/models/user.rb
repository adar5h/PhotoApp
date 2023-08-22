class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable
  has_one :payment
  accepts_nested_attributes_for :payment
  # when we're going to signup a user, its going to be handled through the registrations/new form and in that form not only are we going to hit the user table but also the payments table
  # So the user accepts the nested attributes for payment through form submission.

  # We have User and Payment, where a user makes a payment.
  # With this setup, if you want to create a user along with payment for that user in a single form submission, you can do something like this in your controller and view.
  # When the user form is submitted, the attributes for both the user and the associated payment are sent to the controller.
  # The accepts_nested_attributes_for declaration in the User model allows the nested attributes for payment to be processed and associated with the user.
end
