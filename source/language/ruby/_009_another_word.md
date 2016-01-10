Let's add a second word to our test:

```ruby
describe Piglatin do
  context "word startig with a consonant" do
    it "translates the word" do
      expect(Piglatin.translate_word "apple").to eq "appleway"
      expect(Piglatin.translate_word "orange").to eq "orangeway"
    end
  end
end
```

We run `rspec` again and see one test passes and one test fail:

```sh
$ rspec
F

Failures:

  1) Piglatin words starting with a consonant translates the word correctly
     Failure/Error: expect(Piglatin.translate_word 'orange').to eq 'orangeway'

       expected: "orangeway"
            got: "appleway"

       (compared using ==)
     # ./spec/piglatin_spec.rb:5:in `block (3 levels) in <top (required)>'

Finished in 0.01019 seconds (files took 0.10086 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/piglatin_spec.rb:3 # Piglatin words starting with a consonant translates the word correctly
```

This is because we hardcoded our method to return `appleway`.
