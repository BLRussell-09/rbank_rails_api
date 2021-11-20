# Rbank Rails Api
# Introduction
Rbank API provides a backend for the Rbank, banking platform. It provides the banking 'core'.

# Overview
Things that the developers should know about

# Authentication
What is the preferred way of using the API

# Error Codes
what status codes can a user expect?

# Rate limit
Is there a limit to the number of requests a user can expect?

# Endpoints

## Accounts
### Get - All Accounts
> http://localhost:3000/accounts
### GET - Single Account
> http://localhost:3000/accounts/:id
### POST - Create Account
> http://localhost:3000/accounts/

    {
      "user_id": 1,
      "balance": "85.40",
      "close_date": "",
      "account_type": "Basic Savings"
    }

### PUT - Update Account
> http://localhost:3000/accounts/:id

    {
      "balance": "69.64",
      "close_date": "",
      "account_type": "Basic Checking"
    }

## Users
### Get - All Users
> http://localhost:3000/users
### GET - Single User
> http://localhost:3000/users/:id
### POST - Create User
> http://localhost:3000/users/

    {
      "first_name": "Fuu",
      "last_name": "Bar",
      "birthday": "10/01/1974",
      "ssn": "123456788",
      "address_one": "1234 Sesame St.",
      "address_two": "",
      "city": "Newark",
      "state": "Canada",
      "zip": "77014-4567"
    }

### PUT - Update User
> http://localhost:3000/users/:id

    {
      "first_name": "Peter",
      "last_name": "Parker",
      "birthday": "09/18/1962",
      "ssn": "123456789",
      "address_one": "4830 Minus Lane",
      "address_two": "Apt 312",
      "city": "Queens",
      "state": "NY",
      "zip": "37076"
    }

## Transactions
### Get - All Transactions
> http://localhost:3000/transactions
### GET - Single Transaction
> http://localhost:3000/transactions/:id
### POST - Create Transaction
> http://localhost:3000/transactions/

    {
      "account_id": 7,
      "originator": "Apple Music",
      "amount": "3.75",
      "transaction_type": "debit",
      "status": "pending"
    }

### PUT - Update Transaction
> http://localhost:3000/transactions/:id

    {
      "status": "complete"
    }


# README

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

* ...
