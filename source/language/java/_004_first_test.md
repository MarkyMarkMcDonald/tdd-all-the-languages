Create the file `src/test/java/tdd/Piglatin.java` with the following contents:

```java
package tdd;

import org.junit.Test;

public class PiglatinTest {

    @Test
    public void translateWord_startingWithSingleConsonant() {
        assertEquals("apple", Piglatin.translateWorld("appleyay"));
    }
}
```

And try to run your test:

```sh
$ mvn test
[INFO] Compiling 2 source files to /Users/bkelly/temp/piglatin-java/target/test-classes
[INFO] -------------------------------------------------------------
[ERROR] COMPILATION ERROR :
[INFO] -------------------------------------------------------------
[ERROR] /Users/bkelly/temp/piglatin-java/src/test/java/tdd/PiglatinTest.java:[9,32] cannot find symbol
  symbol:   variable Piglatin
  location: class tdd.PiglatinTest
[INFO] 1 error
[INFO] -------------------------------------------------------------
```

We're getting a compilation error because we don't have a class called Piglatin.

