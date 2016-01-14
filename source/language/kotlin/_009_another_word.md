Let's add a second word to our test:

```kotlin
package tdd.piglatin

import org.junit.Test
import kotlin.test.assertEquals

class PiglatinTest {
	@Test
    fun testTranslateWord_startingWithSingleConsonant() {
        assertEquals("appleway", translateWord("apple"))
        assertEquals("orangeway", translateWord("orange"))
    }
}
```

We run `mvn test` again and see one test passes and one test fail:

```sh
Failed tests:   testTranslateWord_startingWithSingleConsonant(tdd.piglatin.PiglatinTest): expected:<[orang]eway> but was:<[appl]eway>

Tests run: 1, Failures: 1, Errors: 0, Skipped: 0
```

This is because we hardcoded our method to return `appleway`.
