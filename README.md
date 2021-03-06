# Random User Generator

[![Build Status](https://travis-ci.org/samnang/random_user_generator.svg?branch=master)](https://travis-ci.org/samnang/random_user_generator)
[![Code Climate](https://codeclimate.com/github/samnang/random_user_generator/badges/gpa.svg)](https://codeclimate.com/github/samnang/random_user_generator)

A Ruby wrapper for RandomUser API. See <https://randomuser.me>

API information can be found at <https://randomuser.me/documentation>

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'random_user_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install random_user_generator

## Usage

```ruby
# Generate a random user
user = RandomUserGenerator.generate
user.email
user.name.first

# Generate multiple random users
users = RandomUserGenerator.generate(results: 2)

# Generate a random female/male user
female_user = RandomUserGenerator.generate_female
male_user   = RandomUserGenerator.generate_male

# Generate random users base on global options
RandomUserGenerator.configure do |config|
  config.gender = 'female'
end
female_user = RandomUserGenerator.generate
male_user   = RandomUserGenerator.generate(gender: 'male') # overridden by inline
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

1. Fork it ( https://github.com/samnang/random_user_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Copyright
Copyright (c) 2015 Samnang Chhun.
See [LICENSE][] for details.

[license]: LICENSE.txt
