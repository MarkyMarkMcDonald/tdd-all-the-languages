What's the easiest way to make this pass? How about just returning the string `ordway`:

```ruby
class Piglatin
  def self.translate_word(word)
    "ordway"
  end
end
```

Run the test once again:

```sh
$ rspec
.

Finished in 0.00079 seconds (files took 0.0962 seconds to load)
1 example, 0 failures
```

Yay, our first passing test!

