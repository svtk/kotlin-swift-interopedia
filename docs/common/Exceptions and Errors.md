## Exceptions

Exceptions declared with `@Throws` is represented with `NSError` and must be handled. Exceptions not declared cannot be converted and will cause a program termination.

### Explanations

In Kotlin, all exceptions are unchecked. In Swift, all exceptions are checked. Therefore, it's important that Kotlin functions that may throw an exception be marked with the `@Throws` annotation and the relevant exceptions. These exceptions will be represented as `NSError`s and must be caught and handled. 

In Kotlin:

```kotlin
@Throws(Exception::class)
fun functionThrowsDeclaredException(){
    throw Exception("Oops!")
}
```

In Swift:
```swift
do {
    try ExceptionsErrorsKt.functionThrowsDeclaredException()
}
catch {
    print (error)
}
```

However, calling the following code from Swift will cause a program termination:
```kotlin
fun functionThrowsUndeclaredException(){
    throw Exception("Oops!")
}
```

### Suspend functions

Suspend functions' completion handlers always have an error parameter. If a suspend function is not annotated with `@Throws`, [only CancellationExceptions are propagated as NSError](https://kotlinlang.org/docs/native-objc-interop.html#errors-and-exceptions).

---
[Table of contents](/README.md)