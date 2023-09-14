## Function returns primitive type

A function returning a primitive type works without error.

### Explanations

Let's describe a function that returns a primitive type in Kotlin:

```kotlin
// FunctionsReturnsPrimitive.kt

fun simpleFunction(): String {
    return "FunctionsReturnsPrimitive.simpleFunction()"
}

class FunctionReturnsPrimitiveExample {
    fun example() {
        val result = simpleFunction()
        println(result)
    }
}
```

On the Swift side, this works correctly:

```swift
print(FunctionsReturnsPrimitiveKt.simpleFunction())
```

---
[Table of contents](/README.md)