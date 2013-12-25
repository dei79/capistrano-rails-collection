# Capistrano::Rails::Collection

Rails specific task collection for Capistrano v3 as extension of the official capistrano rails gem:

* cap deploy:seed

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-rails-collection'

And then execute:

    $ bundle

## Usage

Require everything (bundler, rails/assets, rails/migrations and rails/collection)

```ruby
# Capfile
require 'capistrano/rails'
require 'capistrano/rails/collection'
```

Please note that any require should be placed in Capfile, not config/deploy.rb.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request