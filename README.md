
# MATT BICYCLE PROJECT

## Objectives
Ruby on Rails application that uses

A sqlite database ActiveRecord Restful routes , Sessions , Login/Logout , Api , Paypal payment option

## Overview
The goal of this project is to build Bicycle Shop that you can sell/buy your Bicycle .

There is implementing Bicycle-Shop using multiple objects that interact, including separate classes for User , Bicycle and Payment.

Just like with Shop, a user is not be able to take any actions , unless they are logged in. Once a user is logged in, they are able to see Inventory , buy or sell  their own Bicycle , as well as view all the bicycles.

There are controller tests to make sure that you build the appropriate controller actions that map to the correct routes.

Gemfile and environment.rb
This project is supported by bundler and includes a Gemfile.

Run bundle install before getting started on the project.


## Models
There are three models in app/models, one User model , one Bicycle and one Payment. Both classes are inherit from ActiveRecord::Base.

## Migrations
You are three migrations to create the users , bicycles and payment tables.

Users are have a username, email, and password, and has many payments.

Bicycle has many payments
Payment belongs to Bicycle and User

## Associations
There are relationship between users , bicycles and payment.

## Home Page
There is a controller action to load the home page. You will want to create a view that will eventually link to both a login page and signup page. The homepage is responding to a GET request to /bicycles.

## Bicycles Index Page
There is a controller action that will load the bicycles list page. You cant see bicycles page without logged in user

## Create Bicycles
There are two controller actions, one to load the create bicycle form, and one to process the form submission. The bicycle should be created and saved to the database. The form is loaded via a GET request to /new and submitted via a POST to /submited.

## Show Bicycle
You will need to create a controller action that displays the information for a single bicycle. You will want the controller action to respond to a GET request to /bicycles/:id.

## Buy Bicycle
You will have two option for payment method . You can make a payment via Paypal or you can pay via my app . You have to write your Credit card number Exp.year and security number . 

## Sign Up
There are two controller actions, one to display the user signup and one to process the form submission. The controller action that processes the form submission should create the user and save it to the database.

The form to sign up should be loaded via a GET request to /signup and submitted via a POST request to /signup.

Make sure you add the Signup link to the home page.

And you can login with Google also. You dont have to sign up .

## Log In
The form to login is loaded via a GET request to /login and submitted via a POST request to /login.

## Log Out
There are controller action to process a GET request to /logout to log out. The controller action should clear the session hash, and redirect the user to /bicycles.

## Protecting The Views
No one can see , Inventory add Bicycles unless they're logged in.

There are two helper methods current_user and logged_in?. I use these helper methods to block content if a user is not logged in.

Dont forget to bundle install before start