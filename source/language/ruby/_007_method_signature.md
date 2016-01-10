Update the argument list for the method:

```ruby
class Piglatin
  def self.translate_word(word)

  end
end
```

And then run your test again:

```
$ rspec
F

Failures:

  1) Piglatin words starting with a consonant translates the word correctly
     Failure/Error: expect(Piglatin.translate_word 'word').to eq 'appleway'

       expected: "appleway"
            got: nil

       (compared using ==)
     # ./spec/piglatin_spec.rb:4:in `block (3 levels) in <top (required)>'

Finished in 0.11592 seconds (files took 0.09504 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/piglatin_spec.rb:3 # Piglatin words starting with a consonant translates the word correctly
```
