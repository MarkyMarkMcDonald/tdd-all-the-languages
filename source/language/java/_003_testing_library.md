Edit the generated `pom.xml` to bring in [JUnit](http://junit.org/), the testing library we'll be using:

```xml
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>tdd</groupId>
  <artifactId>piglatin-java</artifactId>
  <packaging>jar</packaging>
  <version>0.1-SNAPSHOT</version>
  <name>piglatin-java</name>
  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>4.12</version>
      <scope>test</scope>
    </dependency>
  </dependencies>
</project>
```

Then run `mvn test` to install the dependency and ensure everything is set up correctly.

