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

Here we are telling RSpec that we'd like a class named `Piglatin` that has a class method named `translate_word` and when we pass it the word `apple` it we expect to get back `appleway`.

Run your test using `rspec` to see it fail:

```sh
$ rspec
/Users/bkelly/temp/piglatin-ruby/spec/piglatin_spec.rb:1:in `<top (required)>': uninitialized constant Piglatin (NameError)
```

It's failing because we haven't actually created a class named `Piglatin` yet.
