# Mountain Factbook


## Overview

We have a table of `mountains`. An individual `Mountain` has a `name`, `elevation_in_feet`, and `annual_climbers`.


## Goals

* Understand the difference between class and instance methods
* Write methods in a model
* Write methods using relationships between models


## Setup
In order to get started, you'll need to run the following commands from the command line:

`bundle install`

`rake db:create`

`rake db:migrate`

`rake db:seed`

Once you've run these commands, if you run `tux` from the command line, you'll enter a console with your code loaded (pretty sweet, right?!).


## Class Methods

### Built In

* `#new` - Takes a hash as an argument
* `#create` - Takes a hash as an argument
* `#find` - Takes an id as an argument
* `#find_by` - Takes a hash as an argument
* `#where` - Takes a hash as an argument
* `#first` - Returns the first
* `#last` - Returns the last
* `#all` - Returns a collection of all
* Calculations
    * `#average` - Takes an attribute as an argument
    * `#sum` - Takes an attribute as an argument

### Writing Our Own

* Class methods are defined with `self`
* Have access to the collection of things
* Explore with self

## Instance Methods

* `#save`
* Attributes of an instance (e.g. `.elevation_in_feet`)
* Relationship methods (based on `has_many` or `belongs_to`)
* Writing our own: explore with self


## Recap
ActiveRecord is very powerful. This is just a brief introduction to the methods that ActiveRecord gives us access to. If you have time and want to dive deeper, start by reading some documentation [here](http://guides.rubyonrails.org/active_record_querying.html).
