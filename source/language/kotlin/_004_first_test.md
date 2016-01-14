Then let's create `src/test/kotlin/tdd/PiglatinTest.kt` with the following contents:

```kotlin
package tdd.piglatin

import org.junit.Test
import kotlin.test.assertEquals

class PiglatinTest {

    @Test
    fun testTranslateWord_startingWithSingleConsonant() {
        assertEquals("appleway", translateWord("apple"))
    }
}
```

And run our test using `mvn test`:

```sh
[ERROR] /Users/bkelly/temp/piglatin-kotlin/src/test/kotlin/tdd/PiglatinTest.kt: (10, 34) Unresolved reference: Piglatin
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 2.655 s
[INFO] Finished at: 2016-01-13T18:44:21-05:00
[INFO] Final Memory: 46M/467M
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.jetbrains.kotlin:kotlin-maven-plugin:1.0.0-beta-4584:test-compile (test-compile) on project piglatin-kotlin: Compilation error. See log for more details -> [Help 1]
[ERROR]
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR]
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
```

It's failing because we haven't actually created a method for `translateWord` inside the `tdd.piglatin` package yet.
