Let's create our project structure using [Maven](https://maven.apache.org/):

```sh
$ mvn archetype:generate -DgroupId=tdd.piglatin -DartifactId=piglatin-kotlin -Dversion=0.0.1-SNAPSHOT -DarchetypeGroupId=com.github.mhshams -DarchetypeArtifactId=kotlin-quickstart-archetype -DarchetypeVersion=0.2.1 -DinteractiveMode=false
$ cd piglatin-kotlin
```

<div class="alert alert-info" role="alert">This defaults to the latest kotlin version. Pass -DkotlinVersion=<KOTLIN_VERSION> if you wish to override it. Kotlin version numbers can be found on the <a href="https://kotlinlang.org/docs/reference/using-maven.html#plugin-and-versions">Kotlin Maven Plugin and Versions page</a>.</div>

Then delete the `Greeting` class and test defined by the Maven archetype and clean out the resulting class:

```sh
$ rm src/main/kotlin/tdd/Greeting.kt
$ rm src/test/kotlin/tdd/GreetingTest.kt
$ mvn clean
```
