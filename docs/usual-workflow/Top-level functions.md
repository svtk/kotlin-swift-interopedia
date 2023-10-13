## Top-level functions

A wrapper class appears: TopLevelFunctionKt.topLevelFunction()

### Explanations

Let's describe the top-level function in Kotlin in the file `TopLevelFunction.kt`:

```kotlin
//TopLevelFunction.kt

fun topLevelFunction() {
    println("Hello from top-level function")
}
```

In Kotlin, similar code can be called directly, without specifying the file name, just specify `import` the desired property.

On the Swift side, [we get a wrapper class `TopLevelFunctionKt`](https://kotlinlang.org/docs/native-objc-interop.html#top-level-functions-and-properties) (file name in Kotlin + suffix Kt), with which you can access the desired function:

```swift
TopLevelFunctionKt.topLevelFunction()
```

---
[Table of contents](/README.md)