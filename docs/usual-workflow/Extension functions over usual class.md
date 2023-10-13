## Extension function over usual class

The function can be used on a class object.

### Explanations

Let's declare an extension function over a custom type in Kotlin code:

```kotlin
//ExtensionFunctionOverUsualClass.kt

class UsualClass {
}

fun UsualClass.extensionFunction() {
    println("Successful call")
}
```

On the Swift side, we can use this function similarly to Kotlin, on an object of the desired class:

```swift
UsualClass().extensionFunction()
```

---
[Table of contents](/README.md)