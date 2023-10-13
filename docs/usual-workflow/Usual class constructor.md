## Usual class constructor

Works the same as Kotlin.

### Explanations

Let's declare a simple class on the Kotlin code side:

```kotlin
//UsualClassConstructor.kt

class UsualClassConstructor(
    val param: String
)
```

On the Swift side, we will get the same class with a main constructor, in which [primitive types will be converted](/docs/types/Primitive%20types.md):

```swift
let _ = UsualClassConstructor(param: "123")
```

A slight difference from Kotlin classes: in the Swift version, all constructor fields must be named.

---
[Table of contents](/README.md)