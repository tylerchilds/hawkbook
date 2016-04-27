[![Circle CI](https://circleci.com/gh/tylerchilds/hawkbook.svg?style=shield)](https://circleci.com/gh/tylerchilds/hawkbook)
[![Code Climate](https://codeclimate.com/github/tylerchilds/hawkbook/badges/gpa.svg)](https://codeclimate.com/github/tylerchilds/hawkbook)
[![Test Coverage](https://codeclimate.com/github/tylerchilds/hawkbook/badges/coverage.svg)](https://codeclimate.com/github/tylerchilds/hawkbook/coverage)

## README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Local Database

`postgres -D /usr/local/var/postgres &`

### TODO

* Code: Homepage
* Code: Model creation (messaging, user, college, book, social auth)
<<<<<<< HEAD
* Code: Passwordless Login Gem
* Code: Venmo Integration (omni-auth venmo)
* Code: Social Integration (profile completion)
* Code: Affiliate Integration (rent/buy)
* Code: UPC Lookup Integration
=======
* Code: Passwordless Login with Authy
* Code: Venmo Integration (omni-auth venmo)
* Code: Social Integration (profile completion)
* Code: Affiliate Integration (rent/buy)
* Code: ISBN Lookup Integration
  * Check sum of ISBN numbers before calling
  * Check local db for ISBN before calling
  * ISBN lookup example
  ```
  https://www.googleapis.com/books/v1/volumes?q=isbn:0436203855&key=AIzaSyDwEcFpgoqCxG-exJUWgn0Kr6nPDU3Vnm4
  ```
>>>>>>> [setup] rails installed, heroku configured and deployments set with  circle ci
* Code: Barcode scanner
* Code: Android App using React.js
* Code: iOS App using React.js

* Marketing: Email Collection for launch

<<<<<<< HEAD

=======
>>>>>>> [setup] rails installed, heroku configured and deployments set with  circle ci
### Done

* Setup: Heroku Deployments
* Setup: Initialize Rails App
* Setup: CircleCI with Deployments to Heroku
* Setup: Code Climate
<<<<<<< HEAD
=======

## User flows

### Onboarding

1. User has downloaded the app
2. Screen "Hawkbook allows scholars to buy and sell textbooks to each other"
3. Screen "Scan a book's barcode to sell it"
3. Screen "Approve a buyer and meet up to complete the sale"

### Sign up/Sign in

1. User is prompted to enter their .edu email address
  1. User clicks a link in the email
    1. First time users get a new User record and get the Device activated
    2. Returning visitors get the Device activated
4. This is the menu screen
  1. Search
  3. My Books
  3. Profile and Messages appear with less importance

### My Books (Listings)

1. Sell
2. Active
  * View
    * Edit
    * Cancel
3. Pending
  * View
    * Edit
    * Cancel
4. Sold
  * View
    * Refund
5. Cancelled
  * View
    * Restore

#### Sell

1. Barcode scanner appears prompting the user to scan for barcodes
  1. All barcode lookups will first check the local Books table, if nothing is found then it calls the Google Books API
  2. The user can alternatively search by ISBN manually
  3. Successful searches store the data in the Books table as sanitary
2. The user will add price and optionally: condition, photo, professor, course code to the listing
3. User returns to their listing page, prompted to add their name, photo, and connect venmo if they haven't already done so.

#### Manage

1. User can update any of the listing data and mark the book as sold or cancel the sale
2. User can refund sales that were made through venmo

### Search

1. User can enter into the search field or select the barcode scanner
2. At the top of the results page is the ability for the user to sell
3. Results will be filtered based on ISBN, title, course, professor, author
  1. We can also ping the google books api again with book titles we've found
4. Viewing a listing will have a CTA for "I'm interested", which will create a Match and start a Message with the seller

### Messaging

1. Messages can be sent between the buyer/seller
2. Seller has CTA to "Sell to buyer", which marks the Book status as pending
3. At this point the Seller can Purchase the book for the listing price, which will set the Book status as sold and create a Sale.
4. They'll need to meet up somewhere to complete the sale.

### Database Schema

Users
college_id
name
photo_url

Colleges
tld
name

Devices
user_id
token
key
active

Emails
user_id
email
verified

Listings
user_id
college_id
book_id
professor
course
price
condition
photo_url
status (active, pending, sold, cancelled)

Books
title
subtitle
description
publisher
published_date
language
page_count
isbn_10
isbn_13
sanitary

Authors
name

AuthorsBooks
book_id
author_id

Sales
listing_id
seller_id
buyer_id
price
refunded

Messages
seller_id
buyer_id
body
>>>>>>> [setup] rails installed, heroku configured and deployments set with  circle ci
