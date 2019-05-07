# FreeAgent Coding Challenge

Thank you for your interest in the FreeAgent Coding Challenge.  This template is a barebones guide to get you started.  Please add any gems, folders, files, etc. you see fit in order to produce a solution you're proud of.

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

<img width="527" alt="Screenshot 2019-05-07 at 12 10 56" src="https://user-images.githubusercontent.com/41509062/57295410-55fb2700-70c2-11e9-9d30-037cb1c0f56b.png">

Raises error if no currency found on the date

<img width="672" alt="Screenshot 2019-05-07 at 12 12 03" src="https://user-images.githubusercontent.com/41509062/57295439-67dcca00-70c2-11e9-9943-591e41e9a0ba.png">

## Your Design Decisions

One major change I made to the existing template, was to change the existing testing framework to RSpec. This is because I'm much more familiar and practiced with it and I find the tests much more readable than when using TestUnit.

There are currently no instance methods and it states in the instructions that the method definition should not be changed, so I stuck with using a Module, as opposed to using a Class.

I didn't really understand what they were asking for when the requirements said they wanted the 'cost of switching from the included feed to another foreign exchange rate provider to be low', so I've tried to get in contact with Katie to find out more.

## Author

* **Daniel Stephenson** - https://github.com/djstephenson7
