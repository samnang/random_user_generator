# Random User Generator

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

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/random_user_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Copyright
Copyright (c) 2015 Samnang Chhun.
See [LICENSE][] for details.

[license]: LICENSE.txt
