Here it's telling us there is no method `translate_word` for our class, so let's add it:

```ruby
class Piglatin
  def self.translate_word
  
  end
end
```

And we run our test yet again:

```sh
$ rspec
F

Failures:

  1) Piglatin words starting with a consonant translates the word correctly
     Failure/Error: def self.translate_word

     ArgumentError:
       wrong number of arguments (1 for 0)
     # ./lib/piglatin.rb:2:in `translate_word'
     # ./spec/piglatin_spec.rb:4:in `block (3 levels) in <top (required)>'

Finished in 0.00048 seconds (files took 0.09886 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/piglatin_spec.rb:3 # Piglatin words starting with a consonant translates the word correctly
```


