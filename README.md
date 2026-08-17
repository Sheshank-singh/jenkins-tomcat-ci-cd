# CI Jenkins Multi-Build Demo

Java project for the DevOps Jenkins practical.

## Tools

- Java JDK 21
- Maven 3.9.16
- Apache Ant
- Gradle 9.6.1
- Git
- Jenkins

## Manual builds

### Maven
```bat
mvn -B clean verify
```

JAR:
```text
target\ci-jenkins-demo-1.0.0.jar
```

Run:
```bat
java -jar target\ci-jenkins-demo-1.0.0.jar
```

### Ant
```bat
ant build
```

JAR:
```text
ant-build\dist\ci-jenkins-demo-1.0.0.jar
```

Run:
```bat
java -jar ant-build\dist\ci-jenkins-demo-1.0.0.jar
```

### Gradle
```bat
gradle clean build
```

JAR:
```text
build\libs\ci-jenkins-demo-1.0.0.jar
```

Run:
```bat
java -jar build\libs\ci-jenkins-demo-1.0.0.jar
```

## Expected test output

```text
TEST PASSED: App.add(2, 3) returned 5.
```
