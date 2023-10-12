## Reified functions

The reified function crashes at runtime.

### Explanations

Let's describe the reified function in Kotlin:

```kotlin
inline fun<reified T> reifiedExample(marks: Int): T {
    return when (T::class) {
        Int::class -> marks as T
        String::class -> "Congratulations! you scored more than 90%" as T
        else -> "Please enter valid type" as T
    }
}
```

We are trying to call from Swift:

```swift
let c = ReifiedFunctionsKt.reifiedFunction(marks: 23)
print("c = \(String(describing: c))")
```

When I try to call the application crashes with the error:

```
Function doesn't have or inherit @Throws annotation and thus exception isn't propagated from Kotlin to Objective-C/Swift as NSError.
It is considered unexpected and unhandled instead. Program will be terminated.
Uncaught Kotlin exception: kotlin.IllegalStateException: unsupported call of reified inlined function `com.jetbrains.swiftinteropplayground.generics.reifiedFunction`
```

We add an annotation on the Kotlin side `@Throws(IllegalStateException)` and get another error:

```
My error messasge 
Error Domain=KotlinException Code=0 "unsupported call of reified inlined function `com.jetbrains.swiftinteropplayground.generics.reifiedFunction`" 
UserInfo={NSLocalizedDescription=unsupported call of reified inlined function `com.jetbrains.swiftinteropplayground.generics.reifiedFunction`, 
KotlinException=kotlin.IllegalStateException: unsupported call of reified inlined function `com.jetbrains.swiftinteropplayground.generics.reifiedFunction`, 
KotlinExceptionOrigin=}
```

---
[Table of contents](/README.md)