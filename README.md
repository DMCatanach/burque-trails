# BurqueTrails

Welcome to Burque Trails! 

This is a web scraper gem with a command line interface to get information about parks with prescription trails in Albuquerque, NM. 

## Installation

To use this gem in a project, include the following line in your gemfile: 

```ruby
gem 'burque_trails', :git => "git@github.com:DMCatanach/burque-trails-cli-app.git"
```

And then execute:

    $ bundle

Alternatively, fork and clone the repo, and run bin/burque_trails. 

## Usage

Search http://www.cabq.gov/parksandrecreation/parks/prescription-trails/ for parks by zip code, or display a list of all parks with prescription trails. View details about a specific park. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DMCatanach/burque_trails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BurqueTrails project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/DMCatanach/burque_trails/blob/master/CODE_OF_CONDUCT.md).
