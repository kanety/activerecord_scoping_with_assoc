# ActiveRecordScopingWithAssoc

Merge scoping to associations in the same way as activerecord5.

## Dependencies

* ruby 2.5+
* activerecord 6.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord_scoping_with_assoc'
```

Then execute:

    $ bundle

## Usage

```ruby
Klass.where(...).scoping_with_assoc do
  ...
end
```

## Contributing

Bug reports and pull requests are welcome at https://github.com/kanety/activerecord_scoping_with_assoc.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
