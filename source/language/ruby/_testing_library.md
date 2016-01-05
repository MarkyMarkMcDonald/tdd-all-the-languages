Edit the generated `Gemfile` to bring in [RSpec](http://rspec.info/), the testing library we'll be using:

```ruby
source "https://rubygems.org"

gem 'rspec'
```

Then run `bundle` to install the dependencies.

Next we'll initialize our project to use RSpec:

```sh
$ rspec --init
```

Then run `rspec` to ensure everything is set up correctly.

