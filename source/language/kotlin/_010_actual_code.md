```kotlin
package tdd.piglatin

fun translateWord(word: String): String {
    return word + "way"
}
```

Then run our test again:

```sh
$ mvn test

Tests run: 1, Failures: 0, Errors: 0, Skipped: 0
```
