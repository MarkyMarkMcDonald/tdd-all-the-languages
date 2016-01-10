What's the easiest way to make this pass? How about just returning the string `appleway`:

```ruby
class Piglatin
  def self.translate_word(word)
    "appleway"
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

