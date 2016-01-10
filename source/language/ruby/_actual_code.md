Let's add some code to actually do something with the word we are passed.

The Pig Latin rules state that when the word starts with a vowel we just add `way` to the end of it.

Since we only have tests for words starting with vowels, let's do the minimum amount of work to get our test passing - appending `way` to the word that's passed it.

```ruby
class Piglatin
  def self.translate_word(word)
    word + "way"
  end
end
```

Then run our test again:

```sh
$ rspec
.

Finished in 0.00083 seconds (files took 0.09543 seconds to load)
1 example, 0 failures
```

