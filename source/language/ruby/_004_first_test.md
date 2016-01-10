Create the file `spec/piglatin_spec.rb` with the following contents:

```ruby
describe Piglatin do
  context "word startig with a consonant" do
    it "translates the word" do
      expect(Piglatin.translate_word "apple").to eq "appleway"
    end
  end
end
```

And then run your test using `rspec` to see it fail:

```sh
$ rspec
/Users/bkelly/temp/piglatin-ruby/spec/piglatin_spec.rb:1:in `<top (required)>': uninitialized constant Piglatin (NameError)
```

Here it is complaining that it doesn't know anything about a class named `Piglatin`

