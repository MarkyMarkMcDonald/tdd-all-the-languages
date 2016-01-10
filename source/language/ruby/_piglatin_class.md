Create the directory `lib` and add the file `piglatin.rb` in it with the following contents:

```ruby
class Piglatin

end
```

Then update `spec/spec_helper.rb` and put the following at the top:

```ruby
require File.expand_path("../../lib/piglatin", __FILE__)
```

This will make your new class available to the specs.

Now we run our tests again:

```sh
$ rspec
F

Failures:

  1) Piglatin words starting with a consonant translates the word correctly
     Failure/Error: expect(Piglatin.translate_word 'apple').to eq 'appleway'

     NoMethodError:
       undefined method `translate_word' for Piglatin:Class
     # ./spec/piglatin_spec.rb:4:in `block (3 levels) in <top (required)>'

Finished in 0.00044 seconds (files took 0.0952 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/piglatin_spec.rb:3 # Piglatin words starting with a consonant translates the word correctly
```

