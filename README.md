# Enigma
<img src="https://raw.githubusercontent.com/llopez/Blog/gh-pages/img/enigma.png" height="150" align="right"/>

[![Build Status](https://travis-ci.org/llopez/enigma.svg?branch=master)](https://travis-ci.org/llopez/enigma)

Enigma is a ruby library, Enigma helps you to interact with BlockCypher APIs

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'enigma', github: 'llopez/enigma'
```

And then execute:

    $ bundle

## Usage

```ruby
Enigma.configure do |config|
  config.api_key = "YOUR-API-KEY"
  config.version = "v1"
  config.currency = "bcy"
  config.network = "main"
end

Enigma::AssetAPI.generate_address
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/llopez/enigma.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
