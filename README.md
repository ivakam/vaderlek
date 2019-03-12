# Väderlek
Weather data parser for project "Väderlek"

Runs on Rails 5.2.2 and Ruby 2.3.4

#API documentation

##Usage

The API will return a JSON array containg the specified data.

Currently the following parameters are available:

`q=your_column` will pluck only the specified columns. Separate with spaces (%20 for URL encoded space).

`limit=number` will limit the returned object to only that amount of records. Default is all of them.

`sort_type=your_column` will sort the object by the specified column.

`sort_order=asc|desc` sets the sorting order (defaults to `asc`).