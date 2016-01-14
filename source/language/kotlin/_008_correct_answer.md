What’s the easiest way to make this pass? How about just returning the string `appleway`:

```kotlin
package tdd.piglatin

fun translateWord(word: String): String {
    return "appleway"
}
```

And now running `mvn test` should result in a passing test:

```sh
$ mvn test

Tests run: 1, Failures: 0, Errors: 0, Skipped: 0
```

