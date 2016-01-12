Edit the generated `Gemfile` to bring in [RSpec](http://rspec.info/), the testing library we'll be using:

```ruby
source "https://rubygems.org"

gem 'rspec'
```

Then run `bundle` to install the dependencies. This will generate a `Gemfile.lock` which specifies the version of each dependency that we are using. This ensures that other developers on our project (including ourselves!) will get the same version when they work on our code on another computer.

Next we'll initialize our project to use RSpec:

```sh
$ rspec --init
```

Then run `rspec` to ensure everything is set up correctly.

