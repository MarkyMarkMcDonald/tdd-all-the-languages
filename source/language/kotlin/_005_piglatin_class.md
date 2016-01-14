Create the file `src/main/tdd/piglatin/Piglatin.tk` with the following contents:

```kotlin
package tdd.piglatin

fun translateWord() {

}

```

<div class="alert alert-warning" role="alert">In other languages we use the concept of a Class method but Kotlin does not have that concept. Instead we are using a <a href="https://kotlinlang.org/docs/reference/classes.html#companion-objects">package-level functions</a>.</div>

Now we run our tests again:

```sh
$ mvn test

[ERROR] /Users/bkelly/temp/piglatin-kotlin/src/test/kotlin/tdd/piglatin/PiglatinTest.kt: (10, 9) Type inference failed. The value of the type parameter T should be mentioned in input types (argument types, receiver type or expected type). Try to specify it explicitly.
[ERROR] /Users/bkelly/temp/piglatin-kotlin/src/test/kotlin/tdd/piglatin/PiglatinTest.kt: (10, 48) Too many arguments for public fun translateWord(): kotlin.Unit defined in tdd.piglatin
```

We haven't met the method contract we've defined in the test, we need to return a string:

```kotlin
package tdd.piglatin

fun translateWord(word: String): String {
    return ""
}
```

And if we run `mvn test` again we can see that we are not returning the expected value.

```sh
$ mvn test

Failed tests:   testTranslateWord_startingWithSingleConsonant(tdd.piglatin.PiglatinTest): expected:<[appleway]> but was:<[]>
```


