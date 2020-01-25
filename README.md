# Robot Framework Kotlin Remote Library

This is an in-progress (currently not working) Kotlin remote library based on a 2016 Robot Framework tutorial published by Thomas Jaspers.

- https://blog.codecentric.de/en/2016/01/robot-framework-tutorial-2016-remote-server-keywords-in-java/

Why does this exist?
- I was able to successfully do something similar with [Scala](https://github.com/jg8481/robotframework-scala-remote-library), and I wanted to try it again using Kotlin.
- I was inspired by the simplicity of the example Thomas Jaspers made.
- Instead of hiding this Kotlin example on my local machine, I prefer to share it.

## Help Appreciated

If you want to help me get this library working, go head and contribute. Any help is appreciated.

## Getting Started (Only for Mac OSX or Linux users)

1) Install **Java 8**, **Maven**, and **Kotlin** on your machine. The rest of these steps assumes that you also have Robot Framework installed locally on your machine. If not please go here...

- https://robotframework.org/#documentation

2) Clone this repo, go into `robotframework-kotlin-remote-library`, then create the server jar by running the following commands.

```
mvn dependency:copy-dependencies
mvn package
```

3) Go into `target` then run one of the following commands to start the server.

```
java -jar kotlin-remote-library-server-1.0.jar
```

4) Go into `tests` then run the following.

```
robot .
```

***

## Big thank you to the following people and groups.

- Pekka Klarck
- Ed Manlove
- Thomas Jaspers
- The entire Robot Framework community and its contributors
