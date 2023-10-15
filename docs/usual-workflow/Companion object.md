## Companion object 

Access to functions and properties is available through the companion auxiliary object.

### Explanations

In Kotlin, working with a companion object is reminiscent of working with static methods and constants in Java. That is:

```kotlin
class CompanionObjectClass {
    companion object {
        const val CONST_VAL_EXAMPLE = "123"
    }
}

fun example() {     
    println(CompanionObjectClass.CONST_VAL_EXAMPLE)
}
```

In Swift, to access the internals of a companion, [there is an object `companion`](https://kotlinlang.org/docs/whatsnew1530.html#improved-swift-objective-c-mapping-for-objects-and-companion-objects) that can be accessed through a class:

```swift
CompanionObjectClass.companion.CONST_VAL_EXAMPLE
```

---
[Table of contents](/README.md)