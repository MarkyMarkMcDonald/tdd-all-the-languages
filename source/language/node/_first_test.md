Create the file `test/odenay_test.js` with the following contents:

```javascript
describe("translateWord", function () {
  it("should translate the word", function () {
    var result = piglatin.translateWord("word");
    expect(result).toBe("ordway");
  });
});
```

And then run your test using `jasmine` to see it fail:

```sh
$ jasmine
Started
F

Failures:
1) translateWorld should translate the word
  Message:
    ReferenceError: piglatin is not defined
  Stack:
    ReferenceError: piglatin is not defined
        at Object.<anonymous> (/Users/bkelly/temp/piglatin-nodejs/spec/piglatin_spec.js:3:18)

1 spec, 1 failure
Finished in 0.005 seconds
```

Here it is complaining that it doesn't know anything about a class named `piglatin`

