# FreeAgent Coding Challenge

Thank you for your interest in the FreeAgent Coding Challenge.  This template is a barebones guide to get you started.  Please add any gems, folders, files, etc. you see fit in order to produce a solution you're proud of.

## Coding Challenge Instructions

Please see the INSTRUCTIONS.md file for more information.

## Your Solution Setup and Run Instructions

Please include instructions on how to setup and run your solution here.

## Your Design Decisions

We'd love to hear your thoughts around any design decisions you made while coding your solution.

# SilverBars Marketplace

A tech test for the Zoo @ Credit Suisse.

## Getting Started

To get started, please fork this repo, then click the green 'Clone or download' button in the top right-hand corner of your screen. Copy the SSH key to your clipboard.

Open the terminal on your machine, cd into the directory you want to store the program in and type in:
```
git clone
```
Paste the SSH key and press enter. This will download a copy of the program onto your machine.

## Requirements

In the code provided you'll find this method definition for you to implement:

```
    CurrencyExchange.rate(date, from_currency, to_currency)
```

The method definition should not be changed.

This method must return the exchange rate between `from_currency` and `to_currency` on `date` as a float.

If the method is unable to calculate the exchange rate requested, it should raise an exception.

If there is no rate for the date provided, it should raise an exception.

To implement the method definition per the requirements please create any new files, classes, methods, etc. that you feel necessary for a good design.

### Prerequisites

This program was built with Ruby 2.5.1. Install ruby using:

```
brew install ruby
```

### Installing

To install the dependencies, run:

```
gem install bundler
bundle install
```

## Running the tests

This application runs using RSpec. This can be run with:

```
rspec
```

Tests passing screenshot

### Styling tests

The linting was tested using RuboCop. To run, run:

```
rubocop
```

## Directions for use

Open your REPL with:

```
pry
```

Setup

```
require './lib/currency_exchange'
```

Calculate currencies

```
CurrencyExchange.rate(Date.new(2018, 11, 22), 'USD', 'GBP')
```

CurrencyExchange.rate screenshot

Raises error if no currency found on the date

Raise error screenshot

## Author

* **Daniel Stephenson** - https://github.com/djstephenson7
